#include <iostream>
using namespace std;
int main() {
  int i = 2;
  int &r = i;
  int work = 0;

#pragma omp parallel
#pragma omp critical
  r = r + r;
#pragma omp parallel
#pragma omp critical
  r = r - r;
#pragma omp parallel
  if (i == 0 && r == 0)
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
