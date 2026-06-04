#include <stdio.h>
double dd1;
double dd2 = 1.0;
static double dd3;
static double dd4 = 2.0;
#pragma omp threadprivate(dd1,dd2,dd3,dd4)
void func_a0(void) {
  if (dd1 != 0.0) printf("func_a0 ng001\n");
  if (dd2 != 1.0) printf("func_a0 ng002\n");
  if (dd3 != 0.0) printf("func_a0 ng003\n");
  if (dd4 != 2.0) printf("func_a0 ng004\n");
}
void func_a1(void) {
  dd1 = 10.0;
  dd2 = 20.0;
  dd3 = 30.0;
  dd4 = 40.0;
}
void func_a2(void) {
  if (dd1 != 10.0) printf("func_a2 ng001\n");
  if (dd2 != 20.0) printf("func_a2 ng002\n");
  if (dd3 != 30.0) printf("func_a2 ng003\n");
  if (dd4 != 40.0) printf("func_a2 ng004\n");
}
