








#include <functional>

struct A
{
    A(){}
    A(const A&) {}
    int operator()(int i) const{return i;}
};

int main()
{
    std::function<int(int)> f;
    f = A();
}
