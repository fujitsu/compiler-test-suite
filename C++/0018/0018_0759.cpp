




#include <type_traits>


template <class T, class U>
void test_add_rvalue_reference()
{
    static_assert((std::is_same<typename std::add_rvalue_reference<T>::type, U>::value), "");
}


int main()
{
    test_add_rvalue_reference<void, void>();
    test_add_rvalue_reference<int, int&&>();
    test_add_rvalue_reference<int[3], int(&&)[3]>();
    test_add_rvalue_reference<int&, int&>();
    test_add_rvalue_reference<const int&, const int&>();
    test_add_rvalue_reference<int*, int*&&>();
    test_add_rvalue_reference<const int*, const int*&&>();
}
