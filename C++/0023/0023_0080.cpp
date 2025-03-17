#include<cassert>
#include<typeinfo>

enum Enum{a,b,c};

template<Enum e> 
struct B
{
    void fun()
    {   
        assert(typeid(e)==typeid(enum Enum));
    }
};

template<Enum e> 
void fun()
{
    assert(typeid(e)==typeid(enum Enum));
}

void fun1(Enum e)
{
     assert(typeid(e)==typeid(enum Enum));
}
int main()
{   
    B<a> b;
    b.fun();

    fun<a>();

    fun1(a);
}
