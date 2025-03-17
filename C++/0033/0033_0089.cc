#include <iostream>
using namespace std;
int main() {
  int i = 2;
  int &r = i;
  int work = 0;
  int i2;

#pragma omp parallel
  i2 = r * r;
  i = i2;
#pragma omp parallel
  i2 = r / r;
  i = i2;
#pragma omp parallel
  i2 = r % r;
  i = i2;

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
