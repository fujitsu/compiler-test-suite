#include <iostream>
using namespace std;

#ifdef _OPENMP
#include <omp.h>
#endif
int a = 0;
int &r = a;
int &func_a() { return a; }

int &func_r() { return r; }
int main() {
  int work = 0;
  int num = 6;
#ifdef _OPENMP
  num *= omp_get_max_threads();
#endif
#pragma omp parallel
#pragma omp atomic
  r++;
#pragma omp parallel
#pragma omp atomic
  ++r;
#pragma omp parallel
#pragma omp atomic
  ((int &)a)++;
#pragma omp parallel
#pragma omp atomic
  ++((int &)a);
#pragma omp parallel
#pragma omp critical
  (func_a())++;
#pragma omp parallel
#pragma omp critical
  ++(func_r());

#pragma omp parallel
  if (r == num && a == num)
#pragma omp parallel
    ;
  else
#pragma omp parallel
#pragma omp atomic
    work++;

  if (!work)
    cout << "ok\n";
  else
    cout << "ng\n";
}
