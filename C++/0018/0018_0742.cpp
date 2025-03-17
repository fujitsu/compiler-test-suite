






#include <typeindex>
#include <cassert>

int main()
{
    std::type_index t1(typeid(int));
    std::type_index t2 = t1;
    assert(t2 == t1);
}
