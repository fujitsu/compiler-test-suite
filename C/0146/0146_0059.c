#include <stdio.h>
#include <omp.h>
int main() {
  int ifval;
  long int ifval2;
  ifval = 1;
  ifval2 = 1;
  omp_set_dynamic(0);
  omp_set_num_threads(2);
  omp_set_max_active_levels(2) ;

#pragma omp parallel
  {
    int x = 10;
#pragma omp task if(0) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    if (x != 20) printf("ng1: %d\n", x);
  }

#pragma omp parallel
  {
    int x = 10;
#pragma omp task if(1) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    if (x != 10 && x != 20) printf("ng2: %d\n", x);
  }

  ifval = 0;
#pragma omp parallel shared(ifval)
  {
    int x = 10;
#pragma omp task if(ifval) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    if (x != 20) printf("ng3: %d\n", x);
  }

  ifval = 1;
#pragma omp parallel shared(ifval)
  {
    int x = 10;
#pragma omp task if(ifval) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    if (x != 10 && x != 20) printf("ng4: %d\n", x);
  }

  ifval = 1;
#pragma omp parallel shared(ifval)
  {
    int x = 10;
#pragma omp task if(ifval==0) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    if (x != 20) printf("ng5: %d\n", x);
  }

  ifval = 1;
#pragma omp parallel shared(ifval)
  {
    int x = 10;
#pragma omp task if(ifval==1) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    if (x != 10 && x != 20) printf("ng6: %d\n", x);
  }

#pragma omp parallel
  {
    int x = 10;
#pragma omp task if(0L) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    if (x != 20) printf("ng7: %d\n", x);
  }

#pragma omp parallel
  {
    int x = 10;
#pragma omp task if(1L) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    if (x != 10 && x != 20) printf("ng8: %d\n", x);
  }

  ifval2 = 0;
#pragma omp parallel shared(ifval2)
  {
    int x = 10;
#pragma omp task if(ifval2) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    if (x != 20) printf("ng9: %d\n", x);
  }

  ifval2 = 1;
#pragma omp parallel shared(ifval2)
  {
    int x = 10;
#pragma omp task if(ifval2) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    if (x != 10 && x != 20) printf("ng10: %d\n", x);
  }

  ifval2 = 1;
#pragma omp parallel shared(ifval2)
  {
    int x = 10;
#pragma omp task if(ifval2==0) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    if (x != 20) printf("ng11: %d\n", x);
  }

  ifval2 = 1;
#pragma omp parallel shared(ifval2)
  {
    int x = 10;
#pragma omp task if(ifval2==1) shared(x)
    {
      x = 20;
    }
#pragma omp taskwait
    
    if (x != 10 && x != 20) printf("ng12: %d\n", x);
  }

  printf("pass\n");
  return 0;
}
