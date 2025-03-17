







#include <typeindex>
#include <cassert>

int main()
{
    std::type_index t1 = typeid(int);
    std::type_index t2 = typeid(int);
    std::type_index t3 = typeid(long);
    assert(t1 == t2);
    assert(t1 != t3);
}
