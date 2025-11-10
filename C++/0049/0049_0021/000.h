#define N 10003

typedef int res_type;
typedef int arg_type;

extern res_type a[N] __attribute__ ((aligned (16)));
extern arg_type b[N] __attribute__ ((aligned (16)));

#pragma omp declare simd linear(ref(x)) linear(uval(c))
void my_fun(res_type &x, const long &c);

void foo(res_type *a, long n);
