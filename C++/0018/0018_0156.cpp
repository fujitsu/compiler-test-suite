





#include <functional>
#include <cassert>

struct A
{
    A(){}
    A(const A&) {}
    int operator()(int i) const{return i;}
};

int main()
{
    {
    std::function<int(int)> f = A();
    std::function<int(int)> f2 = f;
    }
}
