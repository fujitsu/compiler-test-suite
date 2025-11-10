#define N 10003

typedef long res_type;
typedef long arg_type;

extern res_type a[N] __attribute__ ((aligned (16)));
extern arg_type b[N] __attribute__ ((aligned (16)));

#pragma omp declare simd linear(i) notinbranch
res_type my_fun(arg_type i);

void foo(void);
