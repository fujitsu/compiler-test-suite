/*
 * FEATURE: C++23 Character encoding of diagnostic text
 * SPEC: P2246R1 Character encoding of diagnostic text
 * PURPOSE: Verify that non-ASCII diagnostic text can be specified in diagnostic-related language constructs.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror diagnostic_text_encoding.cpp
 */

#include <cassert>
#include <cstdlib>

[[deprecated("診断メッセージ")]]
void deprecated_function()
{
}

[[nodiscard("戻り値を使用してください")]]
int nodiscard_function()
{
    return 42;
}

int main()
{
    constexpr bool always_true = true;
    static_assert(always_true, "静的アサート");

    int value = nodiscard_function();
    assert(value == 42);

    return EXIT_SUCCESS;
}

