#include <iostream>
using namespace std;

#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif
int _g = 0;
int _f = 0;
int _f2 = 0;
struct A {
  static void g() {
#pragma omp atomic
    _g++;
  }
  static int s;
} a, *p;
int A::s = 0;

A *f() {
#pragma omp parallel
#pragma omp atomic
  _f++;
  return p;
}

A f2() {
#pragma omp parallel
#pragma omp atomic
  _f2++;
  return a;
}
int main() {
  int work, work2;
  work = work2 = 2;
#pragma omp parallel
  f()->g();
#pragma omp parallel
  f()->s = 10;
#pragma omp parallel
  f2().g();
#pragma omp parallel
  f2().s = 10;

#ifdef _OPENMP
  work *= omp_get_max_threads();
  if (!omp_get_dynamic() && omp_get_nested()) {
    work2 *= pow(omp_get_max_threads(), 2);
  } else if (omp_get_nested()) {
    if (omp_get_num_procs() < pow(omp_get_max_threads(), 2)) {
      work2 *= omp_get_num_procs();
    } else {
      work2 *= pow(omp_get_max_threads(), 2);
    }
  } else {
    work2 = work;
  }
#endif

  if (_f == work2 && _g == work && _f2 == work2)
    cout << "ok" << endl;
  else
    cout << "ng" << endl;
}
