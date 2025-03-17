#include <iostream>
using namespace std;

#ifdef _OPENMP
#include <omp.h>
#endif
int main() {
  int i = 1;
  int &r = i;
  int *p = &r;
  int work = 0;
  int num = 4;

#ifdef _OPENMP
  num = 1 + 3 * omp_get_max_threads();
#endif
#pragma omp parallel
#pragma omp atomic
  (*p)++;
#pragma omp parallel
#pragma omp atomic
  r++;
#pragma omp parallel
#pragma omp atomic
  i++;
#pragma omp parallel
  if (&i == &r && &i == p && &r == p && i == num && r == num && *p == num)
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
