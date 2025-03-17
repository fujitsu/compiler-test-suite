#include <cassert>

namespace case2 
{    
    struct X 
    {
        template<typename T>
        X(T n,...)
        {
            x = 123;
        }
        int x;
    };

    struct Y : public X
    {
        using X::X;
    };

    void test()
    {
        Y y1(123,1,1,1);
        Y y2(y1);
        assert(y2.x == 123);
    }
}

namespace case3
{   
    struct X
    {
        template <typename T>
        X(T n,...) : x(n) {}
        int x;
    };

    struct Y : public X 
    {
        using X::X;
    };

    void test()
    {
        Y y1(123,2,3);
        Y y2(static_cast<Y&&>(y1));
        assert(y2.x == 123);
    }
}

namespace case4
{   
    struct X
    {
        template <typename T>
        X(T n,T y,...)
        {
            i = n;
            j = y;
        }
        int i;
        int j;
    };

    struct Y:public X
    {
        using X::X;
    };
    
    void test()
    {
        Y y(1,2,2,3);
        assert(y.i == 1);
        assert(y.j == 2);
    }
}
void test() 
{
    case2::test();
    case3::test();
    case4::test();
}

int main() 
{
    test();
}

