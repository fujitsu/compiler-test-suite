
#include <omp.h>
#include <stdio.h>

void sub01()
{
  long double a,b,c;
  a=100;
  b=150;
  c=200;
#pragma omp task firstprivate(a,b,c)
  {
    if (a!=100 || b!=150 || c!=200) {
      printf("NG-01 a=%Lf b=%Lf c=%Lf\n",a,b,c);
    }
    a+=50;
    b+=50;
    c+=50;
  }
#pragma omp taskwait
  if (a!=100 || b!=150 || c!=200) {
    printf("NG-02 a=%Lf b=%Lf c=%Lf\n",a,b,c);
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
