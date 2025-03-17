

#include <stdio.h>

void sub()
{
  static int a=0;
  int b=5,c=10;
#pragma omp sections
  {
    {
#pragma omp task if(a==0) untied default(none) shared(a,b,c)
    {
#pragma omp task if(1) untied default(shared) private(b) firstprivate(c)
      {
#pragma omp atomic
	a += 1;
	b += 10;
	if (c!=10) {
	  printf("NG:c=%d\n",c);
	}
      }
#pragma omp taskwait
      if (b!=5) {
	printf("NG:b=%d\n",b);
      }
    }
#pragma omp taskwait
    }
#pragma omp section
    {
#pragma omp task if(a==0) untied default(none) shared(a,b,c) 
    {
#pragma omp task if(1) untied default(shared) private(c) firstprivate(b)
      {
#pragma omp atomic
	a += 1;
	if (b!=5) {
	  printf("NG:b=%d\n",b);
	}
      }
#pragma omp taskwait
      if (c!=10) {
	printf("NG:c=%d\n",c);
      }
    }
#pragma omp taskwait
    }
  }

  if (a!=2) {
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
