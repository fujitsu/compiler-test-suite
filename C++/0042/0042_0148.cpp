#include <cassert>
#include <type_traits>

void test() {
    static_assert((std::is_same<long long, decltype(123ll)>::value), "");
    static_assert((std::is_same<long long, decltype(123LL)>::value), "");
    static_assert((std::is_same<unsigned long long, decltype(123ull)>::value), "");
    static_assert((std::is_same<unsigned long long, decltype(123uLL)>::value), "");
    static_assert((std::is_same<unsigned long long, decltype(123Ull)>::value), "");
    static_assert((std::is_same<unsigned long long, decltype(123ULL)>::value), "");
}

int main() {
    test();
}
