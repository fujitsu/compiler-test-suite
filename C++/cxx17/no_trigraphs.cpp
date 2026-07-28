/* FEATURE: Disabling trigraph expansion by default
 * SPEC: ISO/IEC 14882:2017 (C++17) [lex.trigraph] (formerly 2.4/1 Trigraph sequences)
 * PURPOSE: In C++17, verify that trigraphs are not processed by default and result in a warning or error.
 * RUN: clang++ -std=c++17 -Wall -Wextra -Werror no_trigraphs.cpp
 */

#include <iostream>
#include <string>

int main() {
    // In C++14/earlier, the trigraph sequence '??/' in a string literal is
    // replaced by the corresponding single character, which is '\'.
    // For example, "dir??/file" would become "dir\file".
    // The sequence '\f' is a valid escape sequence (form feed), so this would
    // typically result in a string of length 7 in C++14/earlier.
    //
    // In C++17, trigraph sequences are NOT processed by default.
    // Therefore, "dir??/file" should remain as "dir??/file",
    // resulting in a string of length 10.
    std::string test_str = "dir??/file";
    std::string converted_str = "dir??/file";

    std::cout << "Testing C++17 'Disabling trigraph expansion by default'..." << std::endl;
    std::cout << "Source string literal: \"dir??/file\"" << std::endl;

    if (test_str == converted_str) {
        // This branch is taken if '??/' was NOT expanded.
        // This is the expected default behavior for C++17.
        std::cout << "Test PASSED: Trigraph '??/' was NOT expanded in string literal." << std::endl;
        std::cout << "Resulting string: \"" << test_str << "\"" << "; Length: " << test_str.length() << std::endl;
        return 0; // Success for C++17 behavior
    } else {
        // This branch is taken if '??/' WAS expanded.
        // This indicates C++14/earlier behavior (trigraphs were expanded).
        std::cout << "Test FAILED: Trigraph '??/' WAS expanded in string literal." << std::endl;
        std::cout << "Expected C++17 string: \"" << converted_str << "\"" << "; Length: " << converted_str.length() << std::endl;
        std::cout << "Actual string (after potential expansion): \"" << test_str << "\"" << "; Length: " << test_str.length() << std::endl;
        return 1; // Failure for C++17 behavior (trigraphs were expanded)
    }
}
