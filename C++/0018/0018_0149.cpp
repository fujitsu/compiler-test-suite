

#include <functional>

template <class T>
void test() {
    static_assert(!std::is_bind_expression<T>::value, "");
}

struct C {};

int main() {
    test<int>();
    test<void>();
    test<C>();
    test<C&>();
    test<C const&>();
    test<C*>();
    test<void()>();
    test<int(*)()>();
    test<int (C::*)()>();
    test<decltype(std::placeholders::_2)>();
}
