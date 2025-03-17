

#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int a;
#pragma omp threadprivate(a)

int main()
{
  int i,j,k;

#ifdef _OPENMP
  omp_set_dynamic(0);
  
  omp_set_max_active_levels(4) ;
  omp_set_num_threads(2);
#endif

#pragma omp parallel
  {

#pragma omp for ordered
    for (i=0;i<5;i++) {
#pragma omp ordered
{
#pragma omp parallel
      {
#pragma omp sections
	{
#pragma omp section
	  {
#pragma omp parallel
	    {
#pragma omp for ordered
	      for (j=0;j<5;j++) {
#pragma omp ordered
		{
#pragma omp parallel
		  {
#pragma omp task
#pragma omp critical
		    {
		      a = 150;
		      for (k=0;k<100000;k++) {
			a++;
		      }
		      if (a!=100150) {
			printf("NG:a=%d\n",a);
		      }
		    }
#pragma omp taskwait
		  }
		}
	      }
	    }
	  }
#pragma omp section
	  {
#pragma omp parallel
	    {
#pragma omp for ordered
	      for (j=0;j<10;j++) {
#pragma omp ordered
		{
#pragma omp parallel
		  {
#pragma omp task
#pragma omp critical
		    {
		      a = 300;
		      for (k=0;k<100000;k++) {
			a++;
		      }
		      if (a!=100300) {
			printf("NG:a=%d\n",a);
		      }
		    }
#pragma omp taskwait
		  }
		}
	      }
	    }
	  }

	}
      }
} 

    }
  }

  
  printf("pass\n");

  return 0;
}
