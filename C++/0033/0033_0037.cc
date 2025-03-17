#include <iostream>
using namespace std;

struct A {
  int a;
  void func(){}
};
int main()
{
  int work = 0;

#pragma omp parallel
  if (&A::a)
#pragma omp parallel
    if (&A::func)
#pragma omp parallel
#if 1
      if (&A::func)
#else
      if (A::func)
#endif
#pragma omp parallel
	;
      else
#pragma omp parallel
	work = 3;
    else
#pragma omp parallel
      work = 2;
  else
#pragma omp parallel
    work = 1;

  if( !work )
    cout << "ok\n";
  else if( work == 1 )
    cout << "ng\n"; 
  else if( work == 2 )
    cout << "ng2\n";
  else
    cout << "ng3\n";

  return 0;
}
