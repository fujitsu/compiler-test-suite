/* FEATURE: C++17 static_assert with no message
 * SPEC: C++17 Standard, [dcl.dcl]/p4 (or similar, exact location may vary slightly between drafts)
 * PURPOSE: To verify that C++17 allows `static_assert` without a message string,
 *          and that older standards (e.g., C++14) correctly reject it.
 * RUN: clang++ -std=c++17 -Wall -Wextra -Werror static_assert_no_message.cpp
 */

int main() {
    // This static_assert has no message.
    // In C++17 and later, this should compile successfully.
    // requiring a message string.
    static_assert(true);

    // If we reach here, the static_assert succeeded.
    return 0; // Success
}

