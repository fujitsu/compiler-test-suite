/*
 - FEATURE: C++23 Make declaration order layout mandated
 - SPEC: P1847R4 Make declaration order layout mandated
 - PURPOSE: Verify that non-static data members are laid out in declaration
            order across access control boundaries, including cases where
            padding may be introduced by alignment requirements
 - RUN: clang++ -std=c++23 -Wall -Wextra -Werror declaration_order_layout.cpp
 */

#include <cstdlib>
#include <cstdint>

// Verify declaration order across public/private/public boundaries
// using member types that may introduce padding.
class AccessBoundaryTest {
public:
    char first;

private:
    double second;

public:
    int third;

public:
    static bool verify()
    {
        AccessBoundaryTest obj;

        const auto p1 =
            reinterpret_cast<std::uintptr_t>(&obj.first);
        const auto p2 =
            reinterpret_cast<std::uintptr_t>(&obj.second);
        const auto p3 =
            reinterpret_cast<std::uintptr_t>(&obj.third);

        return (p1 < p2) &&
               (p2 < p3);
    }
};

// Verify declaration order across public/protected/private/public
// boundaries using a different type sequence and alignment profile.
class MixedAccessTest {
public:
    char first;

protected:
    long long second;

private:
    double third;

public:
    int fourth;

public:
    static bool verify()
    {
        MixedAccessTest obj;

        const auto p1 =
            reinterpret_cast<std::uintptr_t>(&obj.first);
        const auto p2 =
            reinterpret_cast<std::uintptr_t>(&obj.second);
        const auto p3 =
            reinterpret_cast<std::uintptr_t>(&obj.third);
        const auto p4 =
            reinterpret_cast<std::uintptr_t>(&obj.fourth);

        return (p1 < p2) &&
               (p2 < p3) &&
               (p3 < p4);
    }
};

int main()
{
    // Verify declaration order across public/private/public boundaries.
    if (!AccessBoundaryTest::verify()) {
        return EXIT_FAILURE;
    }

    // Verify declaration order across all access control levels.
    if (!MixedAccessTest::verify()) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
