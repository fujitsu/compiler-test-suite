
#include <omp.h>
#include <stdio.h>

void sub01()
{
  int                  a;
  signed char          b;
  signed short int     c;
  signed long long int d;
  a=b=c=d=100;
#pragma omp task firstprivate(a,b,c,d)
  {
    if (a!=100 || b!=100 || c!=100 || d!=100) {
      printf("NG-01 a=%d b=%d c=%d d=%d\n",a,b,c,d);
    }
    a=b=c=d=200;
  }
#pragma omp taskwait
  if (a!=100 || b!=100 || c!=100 || d!=100) {
    printf("NG-02 a=%d b=%d c=%d d=%d\n",a);
  }
}

int main()
{
#pragma omp parallel
  {
    sub01();
  }
  printf("pass\n");
  return 0;
}
