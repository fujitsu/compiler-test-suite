#include <cassert>

namespace case1
{   
    struct X
    {
        X() {}
    };

    struct Y : public X 
    {
        using X::X;
    };

    void test() 
    {
        Y y;
    }
}

namespace case2 
{    
    struct X 
    {
        X(int n) : x(n) {}
        int x;
    };

    struct Y : public X
    {
        using X::X;
    };

    void test()
    {
        Y y1(123);
        Y y2(y1);
        assert(y2.x == 123);
    }
}

namespace case3
{   
    struct X
    {
        X(int n) : x(n) {}
        int x;
    };

    struct Y : public X 
    {
        using X::X;
    };

    void test()
    {
        Y y1(123);
        Y y2(static_cast<Y&&>(y1));
        assert(y2.x == 123);
    }
}

namespace case4
{   
    struct X
    {
        X(int n,int y)
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
        Y y(1,2);
        assert(y.i == 1);
        assert(y.j == 2);
    }
}
void test() 
{
    case1::test();
    case2::test();
    case3::test();
    case4::test();
}

int main() 
{
    test();
}

