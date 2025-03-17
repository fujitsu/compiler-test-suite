#include <stdio.h>
class A { public: int i; };
class B : public A { public: int j; };
B bobj;
A aobj = bobj;
int main()
{
  int work=0;
#pragma omp parallel
  if (aobj.i == 0 && bobj.j == 0)
#pragma omp parallel
    ;
  else
#pragma omp parallel
#pragma omp atomic
    work++;

  if(!work)
    printf("ok\n");
  else
    printf("ng\n");
}

