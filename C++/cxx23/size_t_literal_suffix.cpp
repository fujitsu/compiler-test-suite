/*
  FEATURE: Literal suffix uz, z for size_t, ssize_t
  SPEC: C++23 P0330R8 Literal Suffix for (signed) size_t
  PURPOSE: Verify that the C++23 z and uz literal suffixes produce
           the expected signed and unsigned size types and can be used
           in constant expressions.
  RUN: clang++ -std=c++23 -Wall -Wextra -Werror size_t_literal_suffix.cpp
*/

#include <cstddef>
#include <type_traits>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

int main()
{
    // Define the signed counterpart type of std::size_t.
    // corresponding to ssize_t.
    using signed_size_t = std::make_signed_t<std::size_t>;

    // Verify that the lowercase "z" suffix produces the signed counterpart of std::size_t.
    static_assert(std::is_same_v<decltype(0z), signed_size_t>,
                  "0z must have the signed counterpart type of std::size_t");

    // Verify that the lowercase "uz" suffix produces std::size_t.
    static_assert(std::is_same_v<decltype(0uz), std::size_t>,
                  "0uz must be std::size_t");

    // Verify that the uppercase "Z" suffix produces the signed counterpart of std::size_t.
    static_assert(std::is_same_v<decltype(123Z), signed_size_t>,
                  "123Z must have the signed counterpart type of std::size_t");

    // Verify that the uppercase "UZ" suffix produces std::size_t.
    static_assert(std::is_same_v<decltype(123UZ), std::size_t>,
                  "123UZ must be std::size_t");

    // Verify that the "zu" suffix order produces std::size_t.
    static_assert(std::is_same_v<decltype(10zu), std::size_t>,
                  "10zu must be std::size_t");

    // Verify that the "uz" suffix order produces std::size_t.
    static_assert(std::is_same_v<decltype(10uz), std::size_t>,
                  "10uz must be std::size_t");

    // Verify that decimal literals with "z" and "uz" have the expected types.
    static_assert(std::is_same_v<decltype(42z), signed_size_t>,
                  "42z must have the signed counterpart type of std::size_t");

    static_assert(std::is_same_v<decltype(42uz), std::size_t>,
                  "42uz must be std::size_t");

    // Verify that hexadecimal literals with "z" and "uz" have the expected types.
    static_assert(std::is_same_v<decltype(0x2az), signed_size_t>,
                  "0x2az must have the signed counterpart type of std::size_t");

    static_assert(std::is_same_v<decltype(0x2auz), std::size_t>,
                  "0x2auz must be std::size_t");

    // Verify that binary literals with "z" and "uz" have the expected types.
    static_assert(std::is_same_v<decltype(0b101010z), signed_size_t>,
                  "0b101010z must have the signed counterpart type of std::size_t");

    static_assert(std::is_same_v<decltype(0b101010uz), std::size_t>,
                  "0b101010uz must be std::size_t");

    // Verify that digit separators do not affect the type of "z" suffixed literals.
    static_assert(std::is_same_v<decltype(1'024z), signed_size_t>,
                  "1'024z must have the signed counterpart type of std::size_t");

    // Verify that digit separators do not affect the type of "uz" suffixed literals.
    static_assert(std::is_same_v<decltype(1'024uz), std::size_t>,
                  "1'024uz must be std::size_t");

    // Verify that the signed size literal can be used in a constant expression.
    constexpr auto signed_size_value = 42z;

    // Verify that the unsigned size literal can be used in a constant expression.
    constexpr auto size_value = 42uz;

    // Verify that a hexadecimal signed size literal can be used in a constant expression.
    constexpr auto hexadecimal_signed_size_value = 0x2az;

    // Verify that a binary unsigned size literal can be used in a constant expression.
    constexpr auto binary_size_value = 0b101010uz;

    // Verify the value of the signed size literal at compile time.
    static_assert(signed_size_value == 42,
                  "signed size literal value mismatch");

    // Verify the value of the size_t literal at compile time.
    static_assert(size_value == 42,
                  "size_t literal value mismatch");

    // Verify the value of the hexadecimal signed size literal at compile time.
    static_assert(hexadecimal_signed_size_value == 42,
                  "hexadecimal signed size literal value mismatch");

    // Verify the value of the binary size literal at compile time.
    static_assert(binary_size_value == 42,
                  "binary size literal value mismatch");

    // Runtime verification of the constant-expression values.
    if (signed_size_value != 42 ||
        size_value != 42 ||
        hexadecimal_signed_size_value != 42 ||
        binary_size_value != 42)
    {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
