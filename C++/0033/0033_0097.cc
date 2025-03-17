#include <iostream>
using namespace std;

struct A {
  int a;
  void func() {}
};
int main() {
  int work = 0;
#pragma omp parallel
  if (&A::a)
#pragma omp parallel
#if 1
    if (&A::func)
#else
    if (A::func)
#endif
#pragma omp parallel
      if (&A::func)
#pragma omp parallel
        ;
      else
#pragma omp parallel
#pragma omp atomic
        work++;
    else
#pragma omp parallel
#pragma omp atomic
      work++;
  else
#pragma omp parallel
    work++;

  if (!work)
    cout << "ok\n";
  else
    cout << "ng\n";
}
