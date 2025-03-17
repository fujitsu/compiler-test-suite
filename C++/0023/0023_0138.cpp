#include <cassert>
#include <type_traits>

struct B
{
    static volatile int  g1()  {return 1;};
    static volatile int  g2()  {return 1;};
};

template<typename T>
int f(T*,T*)
{
    assert(true == (std::is_same<T, volatile int ()>::value));
    return 1;
}


int main()
{   
    B b;
    int y = f(B::g1,B::g2);

}
