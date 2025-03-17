

#include <stdio.h>

void sub()
{
  int a=5;

  a=10;
#pragma omp taskwait
  if (a!=10) {
    printf("NG:a=%d\n",a);
  }
}

int main()
{
#pragma omp parallel
 {
   sub();
 }
  
  printf("pass\n");

  return 0;
}
