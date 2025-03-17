

#include <stdio.h>

int a = 0;
#pragma omp threadprivate(a)

void sub()
{
  int i;
#pragma omp task
  {
#pragma omp task
    {
#pragma omp task
      {
#pragma omp task
	{
#pragma omp task
	  {
#pragma omp task
	    {
#pragma omp task
	      {
#pragma omp task
		{
#pragma omp task
		  {
#pragma omp task
		    {
		      a = 1500;
		      for (i=0;i<20000;i++) {
			a++;
		      }
		      if (a!=21500) {
			printf("NG:a=%d\n",a);
		      }
		    }
#pragma omp taskwait
		  }
#pragma omp taskwait
		}
#pragma omp taskwait
	      }
#pragma omp taskwait
	    }
#pragma omp taskwait
	  }
#pragma omp taskwait
	}
#pragma omp taskwait
      }
#pragma omp taskwait
    }
#pragma omp taskwait
  }
#pragma omp taskwait
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
