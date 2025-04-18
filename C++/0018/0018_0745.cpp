











#include <typeindex>
#include <cassert>
#include <type_traits>

int main()
{
    typedef std::hash<std::type_index> H;
    static_assert((std::is_same<typename H::argument_type, std::type_index>::value), "" );
    static_assert((std::is_same<typename H::result_type, std::size_t>::value), "" );

    std::type_index t1 = typeid(int);
    assert(std::hash<std::type_index>()(t1) == t1.hash_code());
}
