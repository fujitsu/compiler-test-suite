/*
 * FEATURE: C++23 P2324R2 "Labels at the end of compound statements"
 * SPEC: P2324R2
 * PURPOSE: Verify that a label can appear at the end of a compound statement.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror label_at_end_of_block.cpp
 */

#include <cstdlib>

int main()
{
    int value = 0;

    {
        value = 1;
        goto end;
        value = 2;

    end:
    }

    return value == 1 ? EXIT_SUCCESS : EXIT_FAILURE;
}

