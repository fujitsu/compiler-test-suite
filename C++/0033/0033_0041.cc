#include <iostream>
using namespace std;

#ifdef _OPENMP
#include <omp.h>
#endif

struct X {
  int i;
  int j : 4;
} x0;
struct Y {
  operator const X &() { return x0; }
} y;
int main() {
  int work = 0;
  X num;
  num.j = 0x03;

#ifdef _OPENMP
  if (omp_get_max_threads() > 4) {
    omp_set_num_threads(4);
  }
  num.j = 0x02 * omp_get_max_threads() + 0x01;
#endif

#pragma omp parallel
  x0.j = 0x01;
  const X &x = y;
#pragma omp parallel
#pragma omp critical
  x0.j += 0x02;
#pragma omp parallel
  if (x.j == num.j && x0.j == num.j)
#pragma omp parallel
    ;
  else {
#pragma omp parallel
    work = 1;
  }

  if (!work)
    cout << "ok\n";
  else {
    cout << "ng:x.j=" << x.j << ":x0.j=" << x0.j << "\n";
  }
}
