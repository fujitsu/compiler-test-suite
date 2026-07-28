/*
FEATURE: C++20 Range-based for statements with initializer
SPEC: N4861 §9.5.4 [stmt.ranged]
PURPOSE: Verify that a range-based for statement with an initializer works
         correctly with multiple kinds of ranges (std::array, std::list,
         std::map with structured bindings, built-in arrays, and a
         user-defined range type), and that iteration produces the
         expected results.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror range_for_with_initializer.cpp
*/

#include <vector>
#include <numeric>
#include <array>
#include <list>
#include <map>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// User-defined range type
struct MyRange {
    int data[3] = {7, 8, 9};

    int* begin() { return data; }
    int* end()   { return data + 3; }
};

int main()
{
    // 0. std::vector
    {
        int total = 0;

        // The initializer declares a variable that is available
        // for the entire range-based for statement.
        for (std::vector<int> values = {1, 2, 3, 4};
             int v : values)
        {
            total += v;
        }

        // Verify that the loop iterated correctly.
        if (total != 10) {
            return EXIT_FAILURE;
        }

        // Verify that a different initializer object works as expected.
        int count = 0;
        for (std::vector<int> values = {5, 6, 7};
             int v : values)
        {
            if (v > 0) {
                ++count;
            }
        }

        if (count != 3) {
            return EXIT_FAILURE;
        }
    }

    // 1. std::array
    {
        int sum = 0;
        for (std::array<int, 3> arr = {1, 2, 3};
             int v : arr)
        {
            sum += v;
        }

        if (sum != 6) {
            return EXIT_FAILURE;
        }
    }

    // 2. std::list
    {
        int sum = 0;
        for (std::list<int> lst = {4, 5, 6};
             int v : lst)
        {
            sum += v;
        }

        if (sum != 15) {
            return EXIT_FAILURE;
        }
    }

    // 3. std::map with structured bindings
    {
        int key_sum = 0;
        int value_sum = 0;

        for (std::map<int, int> m = {{1, 10}, {2, 20}};
             auto& [k, v] : m)
        {
            key_sum += k;
            value_sum += v;
        }

        if (key_sum != 3 || value_sum != 30) {
            return EXIT_FAILURE;
        }
    }

    // 4. Built-in array
    {
        int sum = 0;

        for (int arr[3] = {10, 20, 30};
             int v : arr)
        {
            sum += v;
        }

        if (sum != 60) {
            return EXIT_FAILURE;
        }
    }

    // 5. User-defined range
    {
        int sum = 0;

        for (MyRange r;
             int v : r)
        {
            sum += v;
        }

        if (sum != 24) { // 7 + 8 + 9
            return EXIT_FAILURE;
        }
    }

    return EXIT_SUCCESS;
}
