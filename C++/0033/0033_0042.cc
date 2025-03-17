#include <stdio.h>
#include <string.h>
long double Ldouble = 1.1E5L;
long double work1, work2;
long double dfunc(long double);
long double func(long double);
int main() {
#pragma omp parallel
  work1 = func(Ldouble);
#pragma omp parallel
  work2 = func(dfunc(Ldouble));

  if (Ldouble == work1 && Ldouble == work2)
    printf("ok\n");
  else
    printf("ng\n");
}

long double dfunc(long double ld) { return ld; }

long double func(long double ld) { return ld; }
