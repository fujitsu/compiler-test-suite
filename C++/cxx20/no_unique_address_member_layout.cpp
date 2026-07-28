/*
FEATURE: C++20 [[no_unique_address]] attribute
SPEC: N4861 §9.12.11 [dcl.attr.nouniqueaddr]
PURPOSE: Verify that the [[no_unique_address]] attribute allows a non-static data
         member (especially an empty type) to share storage with other members
         and therefore not increase the size of the containing object.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror no_unique_address_member_layout.cpp
*/

#include <type_traits>
#include <cstddef>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

struct Empty {
};

struct WithoutAttribute {
    int value;
    Empty e;  // normally occupies at least one byte
};

struct WithAttribute {
    int value;
    [[no_unique_address]] Empty e;  // may share storage with other members
};

int main() {
    // Ensure Empty is actually empty
    static_assert(std::is_empty_v<Empty>, "Empty must be an empty type");

    // Without the attribute, the empty member typically increases the size
    if (sizeof(WithoutAttribute) <= sizeof(int)) {
        return EXIT_FAILURE;
    }

    // With the attribute, the empty member should not increase the size
    if (sizeof(WithAttribute) != sizeof(int)) {
        return EXIT_FAILURE;
    }

    // Verify that the member can share the same address as another member
    WithAttribute obj{};
    const void* addr_value = static_cast<const void*>(&obj.value);
    const void* addr_empty = static_cast<const void*>(&obj.e);

    if (addr_value != addr_empty) {
        // It is permitted for them to be equal; if not equal the attribute
        // was not used for storage sharing.
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
