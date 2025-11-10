#include "public2/004.h"


namespace case1
{
    class Y
    {
    public:
        class X;
        static const int ya = 1;
        static int yb() { return 2; }
        static int yc;
        static int yd();
    };
    
    class Y::X
    {
    public:
        int xa = ya;
        int xb = yb();
        int xc { yc };
        int xd { yd() };
    };
    
    void test()
    {
        Y::X x;
        assert(x.xa == 1);
        assert(x.xb == 2);
        assert(x.xc == 3);
        assert(x.xd == 4);
    }
    
    int Y::yc = 3;
    int Y::yd() { return 4; }
}


namespace case2
{
    class Y
    {
    public:
        class X;
        int ya = 1;
        int yb() { return 2; }
        static const int yc = 3;
        static int yd() { return 4; }
        static int ye;
        static int yf();
    };
    
    class X : Y
    {
    public:
        int xa = ya;
        int xb = yb();
        int xc { yc };
        int xd { yd() };
        int xe = { ye };
        int xf = { yf() };
    };
    
    void test()
    {
        X x;
        assert(x.xa == 1);
        assert(x.xb == 2);
        assert(x.xc == 3);
        assert(x.xd == 4);
        assert(x.xe == 5);
        assert(x.xf == 6);
    }
    
    int Y::ye = 5;
    int Y::yf() { return 6; }
}


namespace case3
{
    class Z
    {
    public:
        class Y;
        static const int za = 1;
        static int zb() { return 2; }
        static int zc;
        static int zd();
    };
    
    class Z::Y
    {
    public:
        class X;
    };
    
    class Z::Y::X
    {
    public:
        int xa = za;
        int xb = zb();
        int xc { zc };
        int xd { zd() };
    };
    
    void test()
    {
        Z::Y::X x;
        assert(x.xa == 1);
        assert(x.xb == 2);
        assert(x.xc == 3);
        assert(x.xd == 4);
    }
    
    int Z::zc = 3;
    int Z::zd() { return 4; }
}

void test()
{
    case1::test();
    case2::test();
    case3::test();
}

PASS_CASE_MAIN_FUNCTION
