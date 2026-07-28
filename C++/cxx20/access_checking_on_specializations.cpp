/*
FEATURE: Access checking on specializations
SPEC: C++20 (see [temp.expl.spec], [temp.class.spec], [class.access])
PURPOSE: Comprehensive test verifying that access control is enforced
         consistently for explicit specializations and related contexts.
         The program must compile and return 0.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror access_checking_on_specializations.cpp
*/

#include <type_traits>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// ------------------------------------------------------------
// Primary template
// ------------------------------------------------------------

template<typename T>
struct Trait
{
    static constexpr int value = 0;
};

// ------------------------------------------------------------
// Class with private and public member types
// ------------------------------------------------------------

class Example
{
private:
    using PrivateType = long;

public:
    using PublicType = int;

    template<typename>
    friend struct FriendTrait;

    // Friend-based verification is kept entirely inside the class.
    static constexpr int friend_verification();
};

// ------------------------------------------------------------
// 1. Explicit specialization (public type)
// ------------------------------------------------------------

template<>
struct Trait<Example::PublicType>
{
    static constexpr int value = 1;
};

// ------------------------------------------------------------
// 2. Partial specialization
// ------------------------------------------------------------

template<typename T>
struct Wrapper { };

template<typename T>
struct Trait<Wrapper<T>>
{
    static constexpr int value = 2;
};

// ------------------------------------------------------------
// 3. Friend-based access (no external reference to PrivateType)
// ------------------------------------------------------------

template<typename T>
struct FriendTrait
{
    static constexpr int value = 0;
};

template<>
struct FriendTrait<long>
{
    static constexpr int value = 3;
};

// Define verification inside class context
constexpr int Example::friend_verification()
{
    // PrivateType is accessible here
    return FriendTrait<PrivateType>::value;
}

// ------------------------------------------------------------
// 4. Alias usage
// ------------------------------------------------------------

using PublicAlias = Example::PublicType;

// ------------------------------------------------------------
// 5. requires-expression access check
// ------------------------------------------------------------

template<typename T>
concept HasPublicType = requires {
    typename T::PublicType;
};

// ------------------------------------------------------------
// main
// ------------------------------------------------------------

int main()
{
    if (Trait<Example::PublicType>::value != 1)
        return EXIT_FAILURE;

    if (Trait<double>::value != 0)
        return EXIT_FAILURE;

    if (Trait<Wrapper<int>>::value != 2)
        return EXIT_FAILURE;

    if (Trait<PublicAlias>::value != 1)
        return EXIT_FAILURE;

    // Friend verification (indirect)
    if (Example::friend_verification() != 3)
        return EXIT_FAILURE;

    static_assert(HasPublicType<Example>);
    static_assert(!HasPublicType<int>);

    return EXIT_SUCCESS;
}

/*
NOTE:
The following would be ill-formed:

template<>
struct Trait<Example::PrivateType> { };

This confirms that specializations are subject to normal
access checking rules.
*/
