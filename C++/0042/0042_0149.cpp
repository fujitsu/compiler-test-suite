
long long gll;
static unsigned long long sgull;
void test_ll() {
    const volatile unsigned long long lull = 9876543210ULL;
    static long long slll;
    (void)lull;
    (void)slll;
}



unsigned long long test_ll(long long ll, unsigned long long ull) {
    return ll+ull;
}



struct X {
    long long ll;
    unsigned long long ull;
    long long bll : 17;
    unsigned long long bull : 25;
} x;


template <long long n> 
struct Y {
    template <unsigned long long m>
    unsigned long long foo() { return n+m; }
};
Y<123ll> y;
unsigned long long z = y.foo<4567890ULL>();


void test() {
    try {
        throw 123LL;
    } catch (long long e) {
        try {
            throw (unsigned long long)e;
        } catch (unsigned long long) {
            
        }
    }
}

int main() {
    test();
}
