






#include <typeindex>
#include <cassert>

int main()
{
    const std::type_info& ti = typeid(int);
    std::type_index t1 = typeid(int);
    assert(t1.hash_code() == ti.hash_code());
}
