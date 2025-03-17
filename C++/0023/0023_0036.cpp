#include <cassert>
#include <typeinfo>

template<typename... Args>
void test(Args ...args)
{
    return (...,args);
}

void test1()
{
    return test();
}

int main()
{
    assert(typeid(test1()) == typeid(void));
}
