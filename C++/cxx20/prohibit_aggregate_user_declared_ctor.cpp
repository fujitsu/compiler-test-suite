/*
FEATURE: Prohibit aggregates with user-declared constructors
SPEC: C++20 [dcl.init.aggr]
PURPOSE: Exhaustively verify that any user-declared constructor (including defaulted,
         deleted, explicit, private, template, and inherited cases) disqualifies a type
         from being an aggregate, and that aggregate initialization is not performed.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror prohibit_aggregate_user_declared_ctor.cpp
*/

#include <type_traits>
#include <utility>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// ------------------------------------------------------------
// Helper: detect whether T{args...} is well-formed (aggregate init possible)
// ------------------------------------------------------------
template<typename T, typename... Args>
concept BraceConstructible = requires(Args&&... args) {
    T{std::forward<Args>(args)...};
};

// ------------------------------------------------------------
// 1. Baseline aggregate
// ------------------------------------------------------------
struct PlainAggregate {
    int x;
    int y;
};

// ------------------------------------------------------------
// 2. User-declared constructor (normal)
// ------------------------------------------------------------
struct UserCtor {
    int x;
    int y;
    UserCtor(int a, int b) : x(a), y(b) {}
};

// ------------------------------------------------------------
// 3. Defaulted constructor (still user-declared)
// ------------------------------------------------------------
struct DefaultedCtor {
    int x;
    int y;
    DefaultedCtor() = default;
};

// ------------------------------------------------------------
// 4. Deleted constructor (still user-declared)
// ------------------------------------------------------------
struct DeletedCtor {
    int x;
    int y;
    DeletedCtor() = delete;
};

// ------------------------------------------------------------
// 5. Explicit constructor
// ------------------------------------------------------------
struct ExplicitCtor {
    int x;
    explicit ExplicitCtor(int a) : x(a) {}
};

// ------------------------------------------------------------
// 6. Private constructor
// ------------------------------------------------------------
struct PrivateCtor {
    int x;
private:
    PrivateCtor(int a) : x(a) {}
};

// ------------------------------------------------------------
// 7. Template constructor
// ------------------------------------------------------------
struct TemplateCtor {
    int x;
    template<typename T>
    TemplateCtor(T v) : x(static_cast<int>(v)) {}
};

// ------------------------------------------------------------
// 8. Inheritance + user ctor
// ------------------------------------------------------------
struct Base {
    int x;
};

struct DerivedWithCtor : Base {
    int y;
    DerivedWithCtor(int a, int b) {
        x = a;
        y = b;
    }
};

// ------------------------------------------------------------
// 9. Control: still aggregate (no constructor)
// ------------------------------------------------------------
struct DerivedAggregate : Base {
    int y;
};

// ------------------------------------------------------------
// 10. Behavior difference check
// ------------------------------------------------------------
struct BehaviorAggregate {
    int x;
    int y;
};

struct BehaviorNonAggregate {
    int x;
    int y;
    BehaviorNonAggregate(int a, int b) : x(a + 1), y(b + 1) {}
};

// ------------------------------------------------------------
// main
// ------------------------------------------------------------
int main() {

    // --------------------------------------------------------
    // Type trait checks
    // --------------------------------------------------------
    static_assert(std::is_aggregate_v<PlainAggregate>);
    static_assert(!std::is_aggregate_v<UserCtor>);
    static_assert(!std::is_aggregate_v<DefaultedCtor>);
    static_assert(!std::is_aggregate_v<DeletedCtor>);
    static_assert(!std::is_aggregate_v<ExplicitCtor>);
    static_assert(!std::is_aggregate_v<PrivateCtor>);
    static_assert(!std::is_aggregate_v<TemplateCtor>);
    static_assert(!std::is_aggregate_v<DerivedWithCtor>);
    static_assert(std::is_aggregate_v<DerivedAggregate>);

    // --------------------------------------------------------
    // Brace constructibility checks
    // --------------------------------------------------------
    static_assert(BraceConstructible<PlainAggregate, int, int>);
    static_assert(BraceConstructible<UserCtor, int, int>); // calls ctor, not aggregate

    // Deleted/defaulted cases: check existence carefully
    static_assert(!BraceConstructible<DeletedCtor>); // cannot construct

    // --------------------------------------------------------
    // Runtime behavior checks
    // --------------------------------------------------------

    // Aggregate initialization
    PlainAggregate a{1, 2};
    if (a.x != 1 || a.y != 2) return EXIT_FAILURE;

    // Constructor must be used
    UserCtor b{3, 4};
    if (b.x != 3 || b.y != 4) return EXIT_FAILURE;

    // Behavior difference
    BehaviorAggregate c{5, 6};
    if (c.x != 5 || c.y != 6) return EXIT_FAILURE;

    BehaviorNonAggregate d{5, 6};
    if (d.x != 6 || d.y != 7) return EXIT_FAILURE; // constructor modifies values

    // Derived aggregate
    DerivedAggregate da{{7}, 8};
    if (da.x != 7 || da.y != 8) return EXIT_FAILURE;

    // Derived non-aggregate
    DerivedWithCtor dn{9, 10};
    if (dn.x != 9 || dn.y != 10) return EXIT_FAILURE;

    return EXIT_SUCCESS;
}
