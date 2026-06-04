#include <omp.h>
#include <stdio.h>
#ifdef __sparc
#define NUMTHREADS 16
#else
#define NUMTHREADS 128
#endif
extern char ccc;
extern short sss;
extern int iii;
extern long lll;
extern float fff;
extern double ddd;
extern long double ldd;
#pragma omp threadprivate(ccc, sss, iii, lll, fff, ddd, ldd)
extern void func1(void);
extern void func2(void);
extern void func3(void);
int main() {
  int numt;
  omp_set_dynamic(0);
  omp_set_num_threads(NUMTHREADS);

#pragma omp parallel shared(numt)
  {
    if (ccc != 0)
      printf("ng1-1: %d\n", ccc);
    if (sss != 0)
      printf("ng1-2: %d\n", sss);
    if (iii != 0)
      printf("ng1-3: %d\n", iii);
    if (lll != 0)
      printf("ng1-4: %lld\n", lll);
    if (fff != 0)
      printf("ng1-5: %e\n", fff);
    if (ddd != 0)
      printf("ng1-6: %e\n", ddd);
    if (ldd != 0)
      printf("ng1-7: %Le\n", ldd);
#pragma omp master
    { numt = omp_get_num_threads(); }
  }
  if (numt != NUMTHREADS)
    printf("ng1-8: %d\n", numt);

#pragma omp parallel
  {
    func1();
    if (ccc != 1)
      printf("ng2-1: %d\n", ccc);
    if (sss != 1)
      printf("ng2-2: %d\n", sss);
    if (iii != 1)
      printf("ng2-3: %d\n", iii);
    if (lll != 1)
      printf("ng2-4: %lld\n", lll);
    if (fff != 1)
      printf("ng2-5: %e\n", fff);
    if (ddd != 1)
      printf("ng2-6: %e\n", ddd);
    if (ldd != 1)
      printf("ng2-7: %Le\n", ldd);
  }

#pragma omp parallel
  {
    func2();
    if (ccc != 2)
      printf("ng3-1: %d\n", ccc);
    if (sss != 2)
      printf("ng3-2: %d\n", sss);
    if (iii != 2)
      printf("ng3-3: %d\n", iii);
    if (lll != 2)
      printf("ng3-4: %lld\n", lll);
    if (fff != 2)
      printf("ng3-5: %e\n", fff);
    if (ddd != 2)
      printf("ng3-6: %e\n", ddd);
    if (ldd != 2)
      printf("ng3-7: %Le\n", ldd);
  }

#pragma omp parallel
  {
    func3();
    if (ccc != 3)
      printf("ng4-1: %d\n", ccc);
    if (sss != 3)
      printf("ng4-2: %d\n", sss);
    if (iii != 3)
      printf("ng4-3: %d\n", iii);
    if (lll != 3)
      printf("ng4-4: %lld\n", lll);
    if (fff != 3)
      printf("ng4-5: %e\n", fff);
    if (ddd != 3)
      printf("ng4-6: %e\n", ddd);
    if (ldd != 3)
      printf("ng4-7: %Le\n", ldd);
  }
  printf("pass\n");
}
