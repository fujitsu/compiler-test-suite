#include <cassert>
#include <type_traits>

void test1() 
{    
    auto ptr1 = new int;
    assert(true == (std::is_same<int*, decltype(ptr1)>::value));

    decltype(auto) ptr2 = new int;
    assert(true == (std::is_same<int*, decltype(ptr2)>::value));

    const auto ptr3 = new int;
    assert(true == (std::is_same<int* const, decltype(ptr3)>::value));

    volatile auto ptr4 = new int;
    assert(true == (std::is_same<int* volatile, decltype(ptr4)>::value));
}

int main()
{
    test1();
}
