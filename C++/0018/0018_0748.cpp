






#include <typeindex>
#include <string>
#include <cassert>

int main()
{
    const std::type_info& ti = typeid(int);
    std::type_index t1 = typeid(int);
    assert(std::string(t1.name()) == ti.name());
}
