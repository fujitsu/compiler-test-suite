#include <stdio.h>
#if defined(__x86_64__)
#include <emmintrin.h>
#include <complex.h>

void icheck(int val, int ans) {
  if (val != ans) {
    printf("NG :: val(%d) , ans(%d)\n", val, ans);
  }
}

void m128dcheck(__m128d val, double ans1, double ans2) {
  double res[2];
  _mm_store_pd(res, val);
  if (res[0] != ans1) {
    printf("NG ans1 :: val(%lf) , ans(%lf)\n", res[0], ans1);
  }
  if (res[1] != ans2) {
    printf("NG ans2 :: val(%lf) , ans(%lf)\n", res[1], ans2);
  }
}

void r8check(double val, double ans) {
  if (val != ans) {
    printf("NG :: val(%lf) , ans(%lf)\n", val, ans);
  }
}

void r16check(long double val, long double ans) {
  if (val != ans) {
    printf("NG :: val(%Lf) , ans(%Lf)\n", val, ans);
  }
}

void f1(int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7, int arg8, int arg9) {
  icheck(arg1, 1);
  icheck(arg9, 2);
  arg1 = arg9 = 3;
  icheck(arg1, 3);
  icheck(arg9, 3);
}

void f2(__m128d arg1, __m128d arg2, __m128d arg3, __m128d arg4, __m128d arg5, __m128d arg6, __m128d arg7, __m128d arg8, __m128d arg9) {
  m128dcheck(arg1, 2.0, 1.0);
  m128dcheck(arg9, 4.0, 3.0);
  arg1 = arg9 = _mm_setzero_pd();
  m128dcheck(arg1, 0.0, 0.0);
  m128dcheck(arg9, 0.0, 0.0);
}

struct arg_on_reg {
  double d1, d2;
};

void f3(struct arg_on_reg arg1, struct arg_on_reg arg2, struct arg_on_reg arg3, struct arg_on_reg arg4, struct arg_on_reg arg5, struct arg_on_reg arg6, struct arg_on_reg arg7, struct arg_on_reg arg8, struct arg_on_reg arg9) {
  r8check(arg1.d1, 1.0);
  r8check(arg1.d2, 2.0);
  r8check(arg9.d1, 3.0);
  r8check(arg9.d2, 4.0);
  arg9.d1 = 5.0;
  arg9.d2 = 6.0;
  arg1 = arg9;
  r8check(arg1.d1, 5.0);
  r8check(arg1.d2, 6.0);
  r8check(arg9.d1, 5.0);
  r8check(arg9.d2, 6.0);
}

struct arg_on_mem {
  double d1, d2, d3;
};

void f4(struct arg_on_mem arg1, struct arg_on_mem arg2, struct arg_on_mem arg3, struct arg_on_mem arg4, struct arg_on_mem arg5, struct arg_on_mem arg6, struct arg_on_mem arg7, struct arg_on_mem arg8, struct arg_on_mem arg9) {
  r8check(arg1.d1, 1.0);
  r8check(arg1.d2, 2.0);
  r8check(arg1.d3, 3.0);
  r8check(arg9.d1, 4.0);
  r8check(arg9.d2, 5.0);
  r8check(arg9.d3, 6.0);
  arg9.d1 = 7.0;
  arg9.d2 = 8.0;
  arg9.d3 = 9.0;
  arg1 = arg9;
  r8check(arg1.d1, 7.0);
  r8check(arg1.d2, 8.0);
  r8check(arg1.d3, 9.0);
  r8check(arg9.d1, 7.0);
  r8check(arg9.d2, 8.0);
  r8check(arg9.d3, 9.0);
}

void f5(double _Complex arg1, double _Complex arg2, double _Complex arg3, double _Complex arg4, double _Complex arg5, double _Complex arg6, double _Complex arg7, double _Complex arg8, double _Complex arg9) {
  r8check(creal(arg1), 1.0);
  r8check(cimag(arg1), 2.0);
  r8check(creal(arg9), 3.0);
  r8check(cimag(arg9), 4.0);
  arg1 = arg9 = 5.0 + 6.0i;
  r8check(creal(arg1), 5.0);
  r8check(cimag(arg1), 6.0);
  r8check(creal(arg9), 5.0);
  r8check(cimag(arg9), 6.0);
}

void f6(long double _Complex arg1, long double _Complex arg2, long double _Complex arg3, long double _Complex arg4, long double _Complex arg5, long double _Complex arg6, long double _Complex arg7, long double _Complex arg8, long double _Complex arg9) {
  r16check(creal(arg1), 1.0L);
  r16check(cimag(arg1), 2.0L);
  r16check(creal(arg9), 3.0L);
  r16check(cimag(arg9), 4.0L);
  arg1 = arg9 = 5.0L + 6.0iL;
  r16check(creal(arg1), 5.0L);
  r16check(cimag(arg1), 6.0L);
  r16check(creal(arg9), 5.0L);
  r16check(cimag(arg9), 6.0L);
}

int main() {
  __m128d v1, v2;
  struct arg_on_reg sr1 = {1.0,2.0}, sr2 = {3.0,4.0};
  struct arg_on_mem sm1 = {1.0,2.0,3.0}, sm2 = {4.0,5.0,6.0};
  double _Complex dc1 = 1.0 + 2.0i, dc2 = 3.0 + 4.0i;
  v1 = _mm_set_pd(1.0, 2.0);
  v2 = _mm_set_pd(3.0, 4.0);

  f1(1,1,1,1,1,1,1,1,2);
  f2(v1,v1,v1,v1,v1,v1,v1,v1,v2);
  f3(sr1,sr1,sr1,sr1,sr1,sr1,sr1,sr1,sr2);
  f4(sm1,sm1,sm1,sm1,sm1,sm1,sm1,sm1,sm2);
  f5(dc1,dc1,dc1,dc1,dc1,dc1,dc1,dc1,dc2);

  puts("OK");
  return 0;
}
#else
int main() {
  puts("OK");
  return 0;
}
#endif
