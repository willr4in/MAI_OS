#include "pthread.h"
#include "stdlib.h"
#include "stdio.h"
#include "stdbool.h"
#include "time.h"

pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;

typedef struct data {
    char* sample;
    int sample_size;
    char* str;
    int str_size;
    int* result;
    int result_size;
} data;

typedef struct data_wrapper {
    data* pointer;
    int pos;
} data_wrapper;

void* comparer(void* wrapper) {
    bool same = false;
    int pos = ((data_wrapper*)wrapper)->pos;
    data* arg = ((data_wrapper*)wrapper)->pointer;
    for (int i = 0; i < arg->sample_size; ++i) {
        if (arg->str[pos + i] == arg->sample[i]) {
            same = true;
        } else {
            same = false;
            break;
        }
    }
    if (same) {
        pthread_mutex_lock(&mutex);
        arg->result = realloc(arg->result, (arg->result_size + 1)*sizeof(int));
        arg->result[arg->result_size++] = pos;
        pthread_mutex_unlock(&mutex);
    }
    pthread_exit(0);
}

int naive_search(data* arg, int max_thr) {
    pthread_t tid[max_thr];
    pthread_attr_t attr;
    pthread_attr_init(&attr);
    int max_ind = arg->str_size - arg->sample_size;
    for (int i=0; i <= max_ind;) {
        int cur_thr = 0;
        while (cur_thr < max_thr && i <= max_ind) {
            data_wrapper* wrapper = malloc(sizeof(data_wrapper));
            wrapper->pointer = arg;
            wrapper->pos = i;
            pthread_create(&tid[cur_thr], &attr, comparer, wrapper);
            ++cur_thr;
            ++i;
        }
        for (size_t j = 0; j < cur_thr; ++j) {
            pthread_join(tid[j], NULL);
        }
    }
}

void value_getter(data* arg) {
    char* sample = NULL;
    char* str = NULL;
    printf("Формат ввода: <образец> \\n <строка>\n");
    char c = getchar();
    int sample_size = 0, str_size = 0;
    while (c!='\n') {
        sample = realloc(sample, (sample_size+1)*sizeof(char));
        sample[sample_size++] = c;
        c = getchar();
    }
    c = getchar();
    while (c!='\n') {
        str = realloc(str, (str_size+1)*sizeof(char));
        str[str_size++] = c;
        c = getchar();
    }
    arg->sample = sample;
    arg->sample_size = sample_size;
    arg->str = str;
    arg->str_size = str_size;
    arg->result = NULL;
    arg->result_size = 0;
}

int main(int argc, char* argv[]) {
    if (argc != 2) {
        printf("Неверный ввод! При вызове необходимо указать число нитей.\n");
        return 1;
    }
    data* arg = malloc(sizeof(data));
    value_getter(arg);
    clock_t t = clock();
    naive_search(arg, atoi(argv[1]));
    t = clock() - t;
    double time_taken = ((double)t)/CLOCKS_PER_SEC;
    printf("\nЗатраченное время: %.3f мс\n", time_taken*1000);
    printf("Число совпадений: %d\n", arg->result_size);
    if (arg->result_size) printf("Индексы совпадений: ");
    for (int i = 0; i < arg->result_size; ++i) {
        printf("%d ", arg->result[i]);
    }
    if (arg->result_size) printf("\n");
}