#include <iostream>
using namespace std;
int main() {
  int i = 2;
  int &r = i;
  const int &r3 = 3;
  int work = 0;
  int r2;

#pragma omp parallel
  r2 = r << r;
  r = r2;
#pragma omp parallel
  r2 = r >> r3;
  r = r2;
#pragma omp parallel
  if (i == 1 && r == 1)
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
