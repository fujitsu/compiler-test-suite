#include <iostream>
using namespace std;

struct A {
  int a;
  void func() {}
};
int main() {
  int work = 0;
#pragma omp parallel
  if (&A::func && &A::a)
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
