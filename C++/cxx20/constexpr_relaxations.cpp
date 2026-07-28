/*
FEATURE: Relaxations of constexpr restrictions
SPEC: P0784R7, P0593R6, P1002R1, [expr.const]
PURPOSE: Exhaustively verify C++20 constexpr relaxations including control flow,
         dynamic allocation, lifetime, branching, is_constant_evaluated,
         recursion, object mutation, and safe exception constructs.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror constexpr_relaxations.cpp
*/

#include <cstddef>
#include <type_traits>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// ------------------------------------------------------------
// 1. Control flow (if / switch / loops / break / continue)
// ------------------------------------------------------------
constexpr int control_flow(int n) {
    int sum = 0;

    for (int i = 0; i < n; ++i) {
        if (i == 5) continue;

        switch (i % 3) {
            case 0: sum += 1; break;
            case 1: sum += 2; break;
            default: sum += 3; break;
        }

        if (sum > 20) break;
    }

    return sum;
}

// ------------------------------------------------------------
// 2. Recursion
// ------------------------------------------------------------
constexpr int fib(int n) {
    if (n <= 1) return n;
    return fib(n - 1) + fib(n - 2);
}

// ------------------------------------------------------------
// 3. Local variables + mutation + scope
// ------------------------------------------------------------
constexpr int scoped_lifetime(int n) {
    int result = 0;

    {
        int temp = n * 2;
        result += temp;
    }

    {
        int temp = n * 3;
        result += temp;
    }

    return result;
}

// ------------------------------------------------------------
// 4. Dynamic allocation variations
// ------------------------------------------------------------
constexpr int dynamic_variants(int n) {
    int* p1 = new int(n);
    int* p2 = new int[n];

    for (int i = 0; i < n; ++i) {
        p2[i] = i;
    }

    int sum = *p1;
    for (int i = 0; i < n; ++i) {
        sum += p2[i];
    }

    delete p1;
    delete[] p2;
    return sum;
}

// ------------------------------------------------------------
// 5. Early return + cleanup correctness
// ------------------------------------------------------------
constexpr int early_return(bool flag) {
    int* p = new int(10);

    if (flag) {
        int v = *p;
        delete p;
        return v;
    }

    delete p;
    return 0;
}

// ------------------------------------------------------------
// 6. is_constant_evaluated()
// ------------------------------------------------------------
constexpr int consteval_branch() {
    if (std::is_constant_evaluated()) {
        return 100;
    } else {
        return 200;
    }
}

// ------------------------------------------------------------
// 7. Object + mutation
// ------------------------------------------------------------
struct S {
    int x;
    constexpr void add(int v) { x += v; }
};

constexpr int object_test() {
    S s{1};
    s.add(5);
    return s.x;
}

// ------------------------------------------------------------
// 8. Pointer manipulation
// ------------------------------------------------------------
constexpr int pointer_ops() {
    int a = 3;
    int b = 4;

    int* p = &a;
    p = &b;

    return *p;
}

// ------------------------------------------------------------
// 9. try/catch (no throw executed)
// ------------------------------------------------------------
constexpr int try_ok() {
    try {
        return 7;
    } catch (...) {
        return -1;
    }
}

// ------------------------------------------------------------
// 10. throw in unreachable path (allowed)
// ------------------------------------------------------------
constexpr int unreachable_throw(bool b) {
    if (b) {
        return 1;
    }
    // never executed in constexpr evaluation
    throw 1;
}

// ------------------------------------------------------------
// 11. sizeof / unevaluated context
// ------------------------------------------------------------
constexpr std::size_t unevaluated() {
    return sizeof(int) + sizeof(double);
}

// ------------------------------------------------------------
// 12. Array + indexing
// ------------------------------------------------------------
constexpr int array_test() {
    int arr[4] = {1,2,3,4};
    int sum = 0;

    for (int i = 0; i < 4; ++i) {
        sum += arr[i];
    }

    return sum;
}

// ------------------------------------------------------------
// Runtime-only exception test
// ------------------------------------------------------------
int runtime_exception(int a, int b) {
    try {
        if (b == 0) throw 1;
        return a / b;
    } catch (...) {
        return -1;
    }
}

// ------------------------------------------------------------
// main
// ------------------------------------------------------------
int main() {
    // ---- compile-time checks ----
    static_assert(control_flow(10) > 0);
    static_assert(fib(6) == 8);
    static_assert(scoped_lifetime(2) == 10);
    static_assert(dynamic_variants(4) == (4 + 0 + 1 + 2 + 3));
    static_assert(early_return(true) == 10);
    static_assert(consteval_branch() == 100);
    static_assert(object_test() == 6);
    static_assert(pointer_ops() == 4);
    static_assert(try_ok() == 7);
    static_assert(unreachable_throw(true) == 1);
    static_assert(unevaluated() >= sizeof(int));
    static_assert(array_test() == 10);

    // ---- runtime checks ----
    if (control_flow(10) <= 0) return EXIT_FAILURE;
    if (fib(6) != 8) return EXIT_FAILURE;
    if (scoped_lifetime(2) != 10) return EXIT_FAILURE;
    if (dynamic_variants(4) != 10) return EXIT_FAILURE;
    if (early_return(false) != 0) return EXIT_FAILURE;
    if (consteval_branch() != 200) return EXIT_FAILURE;
    if (object_test() != 6) return EXIT_FAILURE;
    if (pointer_ops() != 4) return EXIT_FAILURE;
    if (try_ok() != 7) return EXIT_FAILURE;
    if (unreachable_throw(true) != 1) return EXIT_FAILURE;
    if (array_test() != 10) return EXIT_FAILURE;

    // runtime exception behavior
    if (runtime_exception(10, 2) != 5) return EXIT_FAILURE;
    if (runtime_exception(10, 0) != -1) return EXIT_FAILURE;

    return EXIT_SUCCESS;
}
