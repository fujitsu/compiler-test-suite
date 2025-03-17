

#include <stdio.h>

int main()
{
  int a=5,i;

#pragma omp parallel
  {
#pragma omp for private(a)
    for (i=0;i<10;i++) {
      a = 10;
#pragma omp taskwait
      if (a!=10) {
	printf("NG:a=%d\n",a);
      }
    }
  }

  
  printf("pass\n");

  return 0;
}
