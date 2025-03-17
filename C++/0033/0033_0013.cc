#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int work = 0;

void func5(int a, int b);
void func5(int a = 1, int b = 2) {
#pragma omp parallel
  if (a == 1 && b == 2)
#pragma omp parallel
#pragma omp atomic
    work++;
  else
    ;
}

void func4(int a = 1, int b = 2);
void func4(int a, int b) {
#pragma omp parallel
  if (a == 1 && b == 2)
#pragma omp parallel
    func5();
  else
    ;
}

void func3(int a, int b = 2);
void func3(int a = 1, int b) {
#pragma omp parallel
  if (a == 1 && b == 2)
#pragma omp parallel
    func4();
  else
    ;
}

void func2(int a = 1);
void func2(int a) {
#pragma omp parallel
  if (a == 1)
#pragma omp parallel
    func3();
  else
    ;
}

void func(int a);
void func(int a = 1) {
#pragma omp parallel
  if (a == 1)
#pragma omp parallel
    func2();
  else
    ;
}
int main() {

  int num = 1;

#ifdef _OPENMP

  if (!omp_get_dynamic() && omp_get_nested() && omp_get_max_threads() >= 2) {
    omp_set_num_threads(2);
    num = 2 << 10;
  } else if (omp_get_dynamic() && omp_get_nested() &&
             omp_get_max_threads() >= 2) {
    num = omp_get_num_procs();
  } else {
    num = omp_get_max_threads();
  }
#endif

#pragma omp parallel
  func();

  if (num == work)
    printf("ok\n");
  else
    printf("ng\n");
}
