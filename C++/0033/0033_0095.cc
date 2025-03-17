#include <iostream>
using namespace std;

int xi = 12;
int xj = 7;
int &xri() { return xi; }
int &xrj() { return xj; }
int main() {
  int work = 0;
#pragma omp parallel
  xrj() = xri() | xrj();
#pragma omp parallel
  if (xj == 15)
#pragma omp parallel
    ;
  else
#pragma omp parallel
#pragma omp atomic
    work++;

  if (!work)
    cout << "ok\n";
  else
    cout << "ng " << xj << "\n";
}
