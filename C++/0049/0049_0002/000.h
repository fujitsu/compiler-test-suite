#define N 10003

typedef int res_type;
typedef int arg_type;

extern res_type a[N] __attribute__ ((aligned (16)));
extern arg_type b[N] __attribute__ ((aligned (16)));

#pragma omp declare simd linear(ref(i)) notinbranch
res_type my_fun_ref(const arg_type &i) ;

#pragma omp declare simd linear(i) notinbranch
res_type my_fun_none(const arg_type &i) ;

#pragma omp declare simd linear(val(i)) notinbranch
res_type my_fun_val(const arg_type &i) ;

#pragma omp declare simd linear(uval(i)) notinbranch
res_type my_fun_uval(const arg_type &i) ;

void foo(void);
void foo2(void);
