#include <type_traits>
#include <cstddef>
#include <cassert>

class Empty
{
};

class NotEmpty
{
    virtual ~NotEmpty();
};

union Union
{
};

struct bit_zero
{
    int : 0;
};

class Abstract
{
    virtual ~Abstract() = 0;
};

enum Enum
{
    zero,
    one
};

typedef void (*FunctionPtr)();

template <class T>
void test1()
{
    static_assert(std::is_null_pointer<T>::value, "");
    static_assert(std::is_null_pointer<const T>::value, "");
    static_assert(std::is_null_pointer<volatile T>::value, "");
    static_assert(std::is_null_pointer<const volatile T>::value, "");
}

template <class T>
void test2()
{
    static_assert(!std::is_null_pointer<T>::value, "");
    static_assert(!std::is_null_pointer<const T>::value, "");
    static_assert(!std::is_null_pointer<volatile T>::value, "");
    static_assert(!std::is_null_pointer<const volatile T>::value, "");
}

int main()
{
    test1<std::nullptr_t>();

    test2<void>();
    test2<int>();
    test2<int &>();
    test2<int &&>();
    test2<int *>();
    test2<const int *>();
    test2<char[3]>();
    test2<char[]>();
    test2<Union>();
    test2<Enum>();
    test2<FunctionPtr>();
    test2<Empty>();
    test2<bit_zero>();
    test2<NotEmpty>();
    test2<Abstract>();

    return 0;
}
