




#include <type_traits>

template <class T, class U>
void test_add_pointer()
{
    static_assert((std::is_same<typename std::add_pointer<T>::type, U>::value), "");
}

int main()
{
    test_add_pointer<void, void*>();
    test_add_pointer<int, int*>();
    test_add_pointer<int[3], int(*)[3]>();
    test_add_pointer<int&, int*>();
    test_add_pointer<const int&, const int*>();
    test_add_pointer<int*, int**>();
    test_add_pointer<const int*, const int**>();
}
