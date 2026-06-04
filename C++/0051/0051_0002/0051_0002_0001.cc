#include <stdio.h>
extern double dd1;
extern double dd2;
static double dd3;
static double dd4 = 3.0;
#pragma omp threadprivate(dd1, dd2, dd3, dd4)
extern void func_a0(void);
extern void func_a1(void);
extern void func_a2(void);
int main() {
#pragma omp parallel
  {
    if (dd1 != 0.0)
      printf("main_0 ng001\n");
    if (dd2 != 1.0)
      printf("main_0 ng002\n");
    if (dd3 != 0.0)
      printf("main_0 ng003\n");
    if (dd4 != 3.0)
      printf("main_0 ng004\n");

    func_a0();

    func_a1();

    func_a2();

    if (dd1 != 10.0)
      printf("main_1 ng001\n");
    if (dd2 != 20.0)
      printf("main_1 ng002\n");
    if (dd3 != 0.0)
      printf("main_1 ng003\n");
    if (dd4 != 3.0)
      printf("main_1 ng004\n");
  }
  printf("pass\n");
  return 0;
}
