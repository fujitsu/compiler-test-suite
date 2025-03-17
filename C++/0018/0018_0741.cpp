






#include <typeindex>
#include <cassert>

int main()
{
    std::type_index t1(typeid(int));
    std::type_index t2(typeid(double));
    assert(t2 != t1);
    t2 = t1;
    assert(t2 == t1);
}
