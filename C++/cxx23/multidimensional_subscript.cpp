/*
 * FEATURE: C++23 Multidimensional subscript operator
 * SPEC: P2128R6 Multidimensional subscript operator
 * PURPOSE: Verify that a subscript operator can accept multiple indices in C++23.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror multidimensional_subscript.cpp
 */

#include <cassert>
#include <cstddef>

struct Matrix {
    int data[2][3]{};

    constexpr int& operator[](std::size_t row, std::size_t column)
    {
        return data[row][column];
    }

    constexpr const int& operator[](std::size_t row,
                                    std::size_t column) const
    {
        return data[row][column];
    }
};

struct Tensor {
    int data[2][3][4]{};

    constexpr int& operator[](std::size_t x,
                              std::size_t y,
                              std::size_t z)
    {
        return data[x][y][z];
    }

    constexpr const int& operator[](std::size_t x,
                                    std::size_t y,
                                    std::size_t z) const
    {
        return data[x][y][z];
    }
};

constexpr bool test_matrix()
{
    Matrix matrix{};

    matrix[0, 0] = 10;
    matrix[0, 2] = 20;
    matrix[1, 1] = 30;

    const Matrix& const_matrix = matrix;

    return const_matrix[0, 0] == 10
        && const_matrix[0, 2] == 20
        && const_matrix[1, 1] == 30;
}

constexpr bool test_tensor()
{
    Tensor tensor{};

    tensor[0, 0, 0] = 40;
    tensor[0, 2, 3] = 50;
    tensor[1, 1, 2] = 60;

    const Tensor& const_tensor = tensor;

    return const_tensor[0, 0, 0] == 40
        && const_tensor[0, 2, 3] == 50
        && const_tensor[1, 1, 2] == 60;
}

static_assert(test_matrix());
static_assert(test_tensor());

int main()
{
    Matrix matrix{};

    matrix[0, 1] = 70;
    matrix[1, 2] = 80;

    const Matrix& const_matrix = matrix;

    assert((const_matrix[0, 1] == 70));
    assert((const_matrix[1, 2] == 80));

    Tensor tensor{};

    tensor[0, 1, 3] = 90;
    tensor[1, 2, 0] = 100;

    const Tensor& const_tensor = tensor;

    assert((const_tensor[0, 1, 3] == 90));
    assert((const_tensor[1, 2, 0] == 100));

    return 0;
}

