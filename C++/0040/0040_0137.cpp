#include "public2/004.h"

namespace N
{
    class X
    {
        typedef X type;
        char c;
        int i;
        double d;
        X(char _c, int _i, double _d) : c(_c), i(_i), d(_d) {}
        X getX();
    public:
        X() : X('\0', 0, 0.) {}
        X(char _c) : type(_c, 0, 0.) {}
        X(int _i) : decltype(getX())('\0', _i, 0.) {}
        X(double _d);
        X(char _c, int _i);
        X(char _c, double _d);
        X(int _i, double _d);
    };
}

typedef N::X NX;

N::X::X(double _d) : NX('\0', 0, _d) {}
N::X::X(char _c, int _i) : NX::type(_c, _i, 0.) {}
N::X::X(char _c, double _d) : decltype(getX())(_c, 0, _d) {}
N::X::X(int _i, double _d) : decltype(getX())::type('\0', _i, _d) {}

void test() {}

PASS_CASE_MAIN_FUNCTION
