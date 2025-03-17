#include <iostream>
using namespace std;
int main() {
  int i = 2;
  int j = 3;
  int &ri = i;
  int &rj = j;
  int work = 0;
  int rj2;

#pragma omp parallel
  rj2 = ri ^ rj;
  rj = rj2;
#pragma omp parallel
  if (rj == 1 && j == 1)
#pragma omp parallel
    ;
  else
#pragma omp parallel
#pragma omp atomic
    work++;

  if (!work)
    cout << "ok\n";
  else
    cout << "ng " << rj << "\n";
}
