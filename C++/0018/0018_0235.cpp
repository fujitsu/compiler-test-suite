








#include <memory>
#include <type_traits>
#include <cassert>
#include <limits>
#include <iostream>
#include <stdio.h>
using namespace std;

template <class T>
struct A { typedef T value_type; };

int main()
{
        A<int> a;
        assert(std::allocator_traits<A<int> >::max_size(a) ==
               std::numeric_limits<std::size_t>::max() / sizeof(int));
}
