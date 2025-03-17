#include <iostream>
using namespace std;
int main() {
  int i = 2;
  int j;
  int &ri = i;
  int &rj = j;
  int work = 0;

#pragma omp parallel
  rj = ri & ri;
#pragma omp parallel
  if (rj == 2 && j == 2)
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
