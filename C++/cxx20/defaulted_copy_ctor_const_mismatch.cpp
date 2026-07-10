/*
FEATURE: const mismatch with defaulted copy constructor
SPEC: C++20 [class.copy.ctor]
PURPOSE: Verify that an implicitly-declared copy constructor becomes
         T(T&) (non-const) when a member has only a non-const copy constructor.
         Also verify that copying from a const object is not allowed.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror defaulted_copy_ctor_const_mismatch.cpp
*/

#include <type_traits>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// A type that has only a non-const copy constructor.
struct NonConstCopyable {
    NonConstCopyable() = default;
    NonConstCopyable(NonConstCopyable&) {}
};

// No copy constructor explicitly declared here.
struct Wrapper {
    NonConstCopyable member;
};

int main() {
    // The implicitly-declared copy constructor of Wrapper should be:
    //   Wrapper(Wrapper&)
    // not:
    //   Wrapper(const Wrapper&)

    static_assert(std::is_constructible_v<Wrapper, Wrapper&>,
                  "Wrapper should be constructible from non-const lvalue");

    static_assert(!std::is_constructible_v<Wrapper, const Wrapper&>,
                  "Wrapper should NOT be constructible from const lvalue");

    Wrapper w1;
    Wrapper w2(w1);  // OK: non-const copy

    (void)w2;

    return EXIT_SUCCESS;  // Success if all static assertions pass.
}
