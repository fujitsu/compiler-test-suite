



#include <type_traits>

template <class T>
void test_lvalue_ref()
{
    static_assert( std::is_reference<T>::value, "");
    static_assert(!std::is_arithmetic<T>::value, "");
    static_assert(!std::is_fundamental<T>::value, "");
    static_assert(!std::is_object<T>::value, "");
    static_assert(!std::is_scalar<T>::value, "");
    static_assert( std::is_compound<T>::value, "");
    static_assert(!std::is_member_pointer<T>::value, "");
}

int main()
{
    test_lvalue_ref<int&>();
    test_lvalue_ref<const int&>();
}
