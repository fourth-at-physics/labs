#include <iostream>
#include <sstream>
#include <string>
#include <vector>

int main() {
    std::vector<std::vector<std::string>> table;
    std::string line;

    std::cout << "Введите строки таблицы (пустая строка завершает ввод):\n";

    // Чтение произвольного числа строк
    while (true) {
        std::getline(std::cin, line);
        if (line.empty()) break;  // завершение ввода

        std::stringstream ss(line);
        std::string cell;
        std::vector<std::string> row;

        while (ss >> cell) {
            row.push_back(cell);
        }

        table.push_back(row);
    }

    // Вывод в нужном формате
    for (const auto& row : table) {
        for (const auto& cell : row) {
            std::cout << "[" << cell << "],";
        }
        std::cout << "\n";
    }

    return 0;
}
