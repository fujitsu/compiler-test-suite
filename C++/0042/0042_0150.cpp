#include <climits>
#include <cstdio>
#include <cassert>

void test() {
    assert(LLONG_MIN == -LLONG_MAX-1);
    assert(ULLONG_MAX == (unsigned long long)LLONG_MAX * 2 + 1);
    printf("%lld, %lld, %lld\n", LLONG_MIN, LLONG_MAX, ULLONG_MAX);
#ifdef MANUAL_TEST
    long long ll = 0;
    unsigned long long ull = 0;
    scanf("%lld%lld", &ll, &ull);
    printf("%lld, %lld\n", ll, ull);
#endif
}

int main() {
    test();
}
