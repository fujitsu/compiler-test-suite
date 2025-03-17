
#include <omp.h>
#include <stdio.h>

union U_TEST1{
  int x;
  int y;
};

union U_TEST2{
  short int     x[4];
  long long int y;
};

void sub01()
{
  union U_TEST1 a;
  union U_TEST2 b;
  a.y=100;

#if defined(__x86_64) || defined(__aarch64__)
  
  b.x[0]=200;
  b.x[1]=0;
  b.x[2]=0;
  b.x[3]=0;
#else
  
  b.x[0]=0;
  b.x[1]=0;
  b.x[2]=0;
  b.x[3]=200;
#endif

#pragma omp task firstprivate(a,b)
  {
    if (a.x!=100 || a.y!=100) {
      printf("NG-01: a={x:%d,y:%d}\n", a.x, a.y);
    }
    if (
#if defined(__x86_64) || defined(__aarch64__)
b.x[0]!=200
#else
b.x[3]!=200
#endif
 || b.y!=200) {
      printf("NG-02: b={x:%d,y:%d}\n",b.x,b.y);
    }
    a.x=200;
    b.y=-1;
  }
  if (a.x!=100 || a.y!=100) {
    printf("NG-03: a={x:%d,y:%d}\n",a.x,a.y);
  }
  if (
#if defined(__x86_64) || defined(__aarch64__)
b.x[0]!=200
#else
b.x[3]!=200
#endif
 || b.y!=200) {
    printf("NG-04: b={x:%d,y:%d}\n",b.x,b.y);
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
