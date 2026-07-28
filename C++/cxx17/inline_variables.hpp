// An inline variable at namespace scope.
// Multiple definitions across translation units are allowed by the standard.
inline int global_counter = 42;

// A class using an inline static data member.
// No out-of-class definition is required in C++17.
struct TestClass {
    inline static int static_value = 100;
};

// Another inline variable to check constant initialization.
inline constexpr std::size_t array_size = 4;
