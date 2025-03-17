#include <cassert>

int bflag = 0;
int dflag = 0;

struct B
{
    B(){}
    B(int)
    {
        bflag++;
    }
};

struct D
{   
    D(){}
    D(double)
    {
        dflag++;
    }
};

template <typename ...bases>
class X:bases...
{   
     public:
     using bases::bases...;
};

int main()
{
    assert(bflag == 0);
    assert(dflag == 0);
    X<B,D> x(1);
    assert(bflag == 1);
    assert(dflag == 0);
    X<B,D> x1(1.0);
    assert(bflag == 1);
    assert(dflag == 1);
}
