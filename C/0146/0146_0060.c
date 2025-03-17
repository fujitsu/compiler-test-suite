#include <stdio.h>
#include <omp.h>
void sub() {
  int ifval;
  long int ifval2;
  ifval = 1;
  ifval2 = 1;
  setenv("OMP_NESTED","TRUE",1);
  omp_set_max_active_levels(2) ;
  omp_set_dynamic(0);
  omp_set_num_threads(2);

#pragma omp task
  {
    int x = 10;
#pragma omp task if(0) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    if (x != 20) printf("ng1: %d\n", x);
  }
#pragma omp taskwait

#pragma omp task
  {
    int x = 10;
#pragma omp task if(1) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    
  }
#pragma omp taskwait

  ifval = 0;
#pragma omp task shared(ifval)
  {
    int x = 10;
#pragma omp task if(ifval) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    if (x != 20) printf("ng3: %d\n", x);
  }
#pragma omp taskwait

  ifval = 1;
#pragma omp task shared(ifval)
  {
    int x = 10;
#pragma omp task if(ifval) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    
  }
#pragma omp taskwait

  ifval = 1;
#pragma omp task shared(ifval)
  {
    int x = 10;
#pragma omp task if(ifval==0) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    if (x != 20) printf("ng5: %d\n", x);
  }
#pragma omp taskwait

  ifval = 1;
#pragma omp task shared(ifval)
  {
    int x = 10;
#pragma omp task if(ifval==1) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    
  }
#pragma omp taskwait

#pragma omp task
  {
    int x = 10;
#pragma omp task if(0L) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    if (x != 20) printf("ng7: %d\n", x);
  }
#pragma omp taskwait

#pragma omp task
  {
    int x = 10;
#pragma omp task if(1L) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    
  }
#pragma omp taskwait

  ifval2 = 0;
#pragma omp task shared(ifval2)
  {
    int x = 10;
#pragma omp task if(ifval2) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    if (x != 20) printf("ng9: %d\n", x);
  }
#pragma omp taskwait

  ifval2 = 1;
#pragma omp task shared(ifval2)
  {
    int x = 10;
#pragma omp task if(ifval2) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    
  }
#pragma omp taskwait

  ifval2 = 1;
#pragma omp task shared(ifval2)
  {
    int x = 10;
#pragma omp task if(ifval2==0) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    if (x != 20) printf("ng11: %d\n", x);
  }
#pragma omp taskwait

  ifval2 = 1;
#pragma omp task shared(ifval2)
  {
    int x = 10;
#pragma omp task if(ifval2==1) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    
  }
#pragma omp taskwait
}

int main() {
#pragma omp parallel
  {
    sub();
  }
  printf("pass\n");
  return 0;
}
