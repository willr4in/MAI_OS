#include <iostream>
#include "function.hpp"

auto main() -> int {
    std::cout << "This program is linking libraries during compilation. Instructions: " << std::endl
              << "\"1\" - calculate square of figure" << std::endl
              << "\"2\" - translate number from decimal to other system" << std::endl
              << "\"-1\" - exit" << std::endl
              << "Input instruction: ";

    int option;
    std::cin >> option;

    while (option != -1) {
        switch (option) {
            case 1:
                float A, B;
                std::cin >> A >> B;
                std::cout << "The square is: " << square(A, B) << std::endl
                          << "Input instruction: ";
                std::cin >> option;
                break;

            case 2:
                long num;
                std::cin >> num;
                std::cout << "The num in other system is: " << translation(num) << std::endl
                          << "Input instruction: ";
                std::cin >> option;
                break;

            default:
                option = -1;
        }
    }
    return 0;
}