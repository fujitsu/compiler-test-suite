

#include <stdio.h>

int main()
{
  int a=5,i;

#pragma omp parallel
  {
#pragma omp for private(a)
    for (i=0;i<10;i++) {
      a = i;
#pragma omp task
      {
	if (a==i) {
	  a += i;
	} else {
	  printf("NG:a=%d\n",a);
	}
      }
#pragma omp taskwait
      if (a!=i) printf("NG:a=%d\n",a);
    }
  }

  
  if (a!=5) {
    printf("NG:a=%d\n",a);
  }
  printf("pass\n");
  return 0;
}
