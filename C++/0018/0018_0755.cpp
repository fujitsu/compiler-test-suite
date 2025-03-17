




#include <type_traits>

template <class T, class U>
void test_decay()
{
    static_assert((std::is_same<typename std::decay<T>::type, U>::value), "");
}

int main()
{
    test_decay<void, void>();
    test_decay<int, int>();
    test_decay<const volatile int, int>();
    test_decay<int*, int*>();
    test_decay<int[3], int*>();
    test_decay<const int[3], const int*>();
    test_decay<void(), void (*)()>();
}
