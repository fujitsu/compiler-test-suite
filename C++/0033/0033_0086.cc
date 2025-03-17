#include <iostream>
using namespace std;

int x;
int &func() { return x; }
int main() {
  int work = 0;
#pragma omp parallel
  func() = 10;
#pragma omp parallel
  if (x == 10)
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
