#include <cassert>

int bflag = 0;
int dflag = 0;

struct B
{
    void g(int)
    {
        bflag++;
    }
};

struct D
{
    void g(double)
    {
        dflag++;
    }
};

template <typename ...bases>
class X:bases...
{   
     public:
     using bases::g ...;
};

int main()
{
    X<B,D> x;
    assert(bflag == 0);
    assert(dflag == 0);
    x.g(1);
    assert(bflag == 1);
    assert(dflag == 0);
    x.g(1.0);
    assert(bflag == 1);
    assert(dflag == 1);
}
