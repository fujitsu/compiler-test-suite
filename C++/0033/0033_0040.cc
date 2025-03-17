#include <iostream>
using namespace std;

struct X {
  int i;
  int j : 4;
} x0;
int main() {
  int i = 0x01;
  const int &rj = (char)(short)i;
  int work = 0;
#pragma omp parallel
  x0.j = 0x13;

#pragma omp parallel
  if (rj == 0x01 && x0.j == 0x03)
#pragma omp parallel
    ;
  else
#pragma omp parallel
    work = 1;

  if (!work)
    cout << "ok\n";
  else
    cout << "ng\n";
}
