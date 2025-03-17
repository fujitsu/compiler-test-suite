#include <iostream>
using namespace std;

int func() { return 1; }
int main() {
  int (&fr)() = func;
  int i, work = 0;

#pragma omp parallel
  i = fr();
#pragma omp parallel
  if (i == 1)
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
