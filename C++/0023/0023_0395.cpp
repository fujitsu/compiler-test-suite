#include <cassert>

struct A
{
    int mem;
};
struct C
{
    C(){}
    template<const A *p>
    void f()
    {
       assert(p == nullptr);
    }
};

int main(){
    C c;
    c.f<nullptr>();

}
