#include<cassert>
#include<typeinfo>

template<int n> 
struct B
{
    int mem;
    void fun()
    {
        assert(typeid(n)==typeid(int));
    }
    
};

template<int n> 
void fun()
{
    assert(typeid(n)==typeid(int));
}

void fun1(int n)
{
    assert(typeid(n)==typeid(int));
}

int main()
{   
    B<2> b;
    b.fun();
    fun<2>();
    fun1(2);
}
