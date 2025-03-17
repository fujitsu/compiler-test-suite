#include <iostream>
using namespace std;

struct B {
  int b1;
  int b2;
  void bfunc() {}
  void bfunc2() {}
};

struct D : B {
  int d1;
  int d2;
  void dfunc() {}
};
int main() {
  int B::*bmp = 0;
  void (B::*bmpf)() = &B::bfunc;
  int t1, t2, t3;
  int work = 0;

#pragma omp parallel
  t1 = bmp == 0;
#pragma omp parallel
  bmp = &B::b1;
#pragma omp parallel
  t2 = bmp == &B::b1;
#pragma omp parallel
  t3 = bmpf == &B::bfunc;

#pragma omp parallel
  if (t1 && t2 && t3)
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
