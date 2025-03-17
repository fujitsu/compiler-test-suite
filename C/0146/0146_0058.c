#include <stdio.h>
#include <omp.h>
int main() {
  int ifval;
  long int ifval2;
  ifval = 1;
  ifval2 = 1;
  setenv("OMP_NESTED","TRUE",1);
  omp_set_dynamic(0);
  omp_set_num_threads(1);

#pragma omp task
  {
    omp_set_num_threads(2);
#pragma omp parallel if(0)
    {
      int x = omp_get_num_threads();
      
      if (x != 1) printf("ng1: %d\n", x);
    }
  }

#pragma omp task
  {
    omp_set_num_threads(2);
#pragma omp parallel if(1)
    {
      int x = omp_get_num_threads();
      
      if (x != 2) printf("ng2: %d\n", x);
    }
  }

  ifval = 0;
#pragma omp task shared(ifval)
  {
    omp_set_num_threads(2);
#pragma omp parallel if(ifval)
    {
      int x = omp_get_num_threads();
      
      if (x != 1) printf("ng3: %d\n", x);
    }
  }

  ifval = 1;
#pragma omp task shared(ifval)
  {
    omp_set_num_threads(2);
#pragma omp parallel if(ifval)
    {
      int x = omp_get_num_threads();
      
      if (x != 2) printf("ng4: %d\n", x);
    }
  }

#pragma omp task shared(ifval)
  {
    omp_set_num_threads(2);
#pragma omp parallel if(ifval==0)
    {
      int x = omp_get_num_threads();
      
      if (x != 1) printf("ng5: %d\n", x);
    }
  }

#pragma omp task shared(ifval)
  {
    omp_set_num_threads(2);
#pragma omp parallel if(ifval==1)
    {
      int x = omp_get_num_threads();
      
      if (x != 2) printf("ng6: %d\n", x);
    }
  }

#pragma omp task
  {
    omp_set_num_threads(2);
#pragma omp parallel if(0L)
    {
      int x = omp_get_num_threads();
      
      if (x != 1) printf("ng7: %d\n", x);
    }
  }

#pragma omp task
  {
    omp_set_num_threads(2);
#pragma omp parallel if(1L)
    {
      int x = omp_get_num_threads();
      
      if (x != 2) printf("ng8: %d\n", x);
    }
  }

  ifval2 = 0;
#pragma omp task shared(ifval2)
  {
    omp_set_num_threads(2);
#pragma omp parallel if(ifval2)
    {
      int x = omp_get_num_threads();
      
      if (x != 1) printf("ng9: %d\n", x);
    }
  }

  ifval2 = 1;
#pragma omp task shared(ifval2)
  {
    omp_set_num_threads(2);
#pragma omp parallel if(ifval2)
    {
      int x = omp_get_num_threads();
      
      if (x != 2) printf("ng10: %d\n", x);
    }
  }

#pragma omp task shared(ifval2)
  {
    omp_set_num_threads(2);
#pragma omp parallel if(ifval2==0)
    {
      int x = omp_get_num_threads();
      
      if (x != 1) printf("ng11: %d\n", x);
    }
  }

#pragma omp task shared(ifval2)
  {
    omp_set_num_threads(2);
#pragma omp parallel if(ifval2==1)
    {
      int x = omp_get_num_threads();
      
      if (x != 2) printf("ng12: %d\n", x);
    }
  }
  printf("pass\n");
  return 0;
}
