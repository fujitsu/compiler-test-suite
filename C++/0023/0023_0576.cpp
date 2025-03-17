#include <cassert>

namespace case2 
{    
    struct X 
    {
        template<typename T>
        X(T n):x(123){}
        int x;
    };

    template<typename T>
    struct Y : public X
    {
        using X::X;
    };

    void test()
    {
        Y<int> y1(123);
        Y<int> y2(y1);
        assert(y2.x == 123);
    }
}

namespace case3
{   
    struct X
    {
        template <typename T>
        X(T n) : x(n) {}
        int x;
    };
    
    template <typename T>
    struct Y : public X 
    {
        using X::X;
    };

    void test()
    {
        Y<int> y1(123);
        Y<int> y2(static_cast<Y<int>&&>(y1));
        assert(y2.x == 123);
    }
}

namespace case4
{   
    struct X
    {
        template <typename T>
        X(T n,int g):i(1),j(2){}
        int i;
        int j;
    };
    
    template <typename T>
    struct Y:public X
    {
        using X::X;
    };
    
    void test()
    {
        Y<int> y(1,2);
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

