
#include <omp.h>
#include <stdio.h>

void sub01()
{
  int a,b,c;
  int *p1,*p2,*p3;
  a=100;
  b=150;
  c=200;
  p1=&a;
  p2=&b;
  p3=&c;
#pragma omp task firstprivate(p1,p2,p3)
  {
    if (*p1!=a || *p1!=100 || *p2!=b || *p2!=150 || *p3!=c || *p3!=200) {
      printf("NG-1: a=%d p1=%d\n",a,*p1);
      printf("    : b=%d p2=%d\n",b,*p2);
      printf("    : c=%d p3=%d\n",c,*p3);
    }
    *p1=50;
    *p2=50;
    *p3=50;
  }
#pragma omp taskwait
  if (*p1!=a || *p1!=50 || *p2!=b || *p2!=50 || *p3!=c || *p3!=50) {
    printf("NG-2: a=%d p1=%d\n",a,*p1);
    printf("    : b=%d p2=%d\n",b,*p2);
    printf("    : c=%d p3=%d\n",c,*p3);
  }
}

int main(void)
{
#pragma omp parallel
  {
    sub01();
  }
  printf("pass\n");
  return 0;
}
