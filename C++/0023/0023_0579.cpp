#include <cassert>

struct B1 
{
    B1(int n)
    {
        mem = n;
    }
    int mem;
};

struct B2:public B1 
{
     using B1::B1;
};

struct  B3 :public B2
{
    using B2::B2;
}; 

struct B4:public B3
{
    using B3::B3;
};

int main()
{
    B4 d(1);
    assert(d.mem == 1);
}
