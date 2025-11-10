#include <cstdlib>
#include <cassert>

int flag = 0;

template <int N>
struct X {
    X(int) {}
    ~X() {
        flag++;
        assert(flag == N);
    }
};

int n = 0;
#if 1 
static X<7> x7 = n;
struct Y { static X<6> x6; }; X<6> Y::x6 = n;
template <class T> struct Z { static X<5> x5; };
    template <class T> X<5> Z<T>::x5 = n;
    template <> X<5> Z<int>::x5 = n;
namespace ns { X<4> x4 = n; }
#endif
X<3> x3 = n;

template <int N>
void foo() {
    assert(flag == N);
}

void bar() {
    static X<2> x2 = n;
    try {
        std::atexit(foo<1>);
        throw 1;
    } catch(...) {
        static X<1> x1 = n;
    }
}

void test() {
    std::atexit(foo<2>);
    bar(); {
        std::atexit(foo<0>);
    }
}




int main() {
    test();
}
