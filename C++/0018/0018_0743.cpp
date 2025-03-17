






#include <typeinfo>
#include <typeindex>
#include <cassert>

int main()
{
    std::type_info const & info = typeid(int);
    std::type_index t1(info);
    assert(t1.name() == info.name());
}
