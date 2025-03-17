#include <iostream>
using namespace std;

#ifdef _OPENMP
#include <omp.h>
#endif

int x;
void Fcn(const int *, short) { cout << "Fcn(const int*, short)\n"; }
void Fcn(int *, int) {
#pragma omp atomic
  x++;
}

int i;
short s = 0;
int main() {
  int work = 0;
  int num = 2;
#ifdef _OPENMP
  num *= omp_get_max_threads();
#endif
#pragma omp parallel
  Fcn(&i, 1L);
#pragma omp parallel
  Fcn(&i, 'c');
#pragma omp parallel
  if (x == num)
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
