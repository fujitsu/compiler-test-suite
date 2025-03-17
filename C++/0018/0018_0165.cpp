










#include <functional>
#include <cassert>
#include <type_traits>
#include <limits>

template <class T>
void
test()
{
    typedef std::hash<T> H;
    static_assert((std::is_same<typename H::argument_type, T>::value), "" );
    static_assert((std::is_same<typename H::result_type, std::size_t>::value), "" );
}

int main()
{
    test<int*>();
    test<void*>();
}
