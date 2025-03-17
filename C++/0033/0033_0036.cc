#include <iostream>
using namespace std;

int x;
void func() { x = 1; }
int main()
{
  int work = 0;

#pragma omp parallel
#pragma omp critical
  (func(), x) += 1;

  if (x == 2)
#pragma omp parallel
    {
#pragma omp parallel
      (func(), x) = 10;
#pragma omp parallel
      if (x == 10)
#pragma omp parallel
	;
      else
#pragma omp parallel
	work = 2;
    }
  else
#pragma omp parallel
    work = 1;

  if( !work )
    cout << "ok\n";
  else if( work == 1 )
    cout << "ng1\n";
  else
    cout << "ng2\n";
}
