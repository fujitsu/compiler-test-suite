#include<cassert>
#include<typeinfo>

void fun(float n)
{
    assert(typeid(n)==typeid(float));
}

int main()
{
    fun(2.5);
}
