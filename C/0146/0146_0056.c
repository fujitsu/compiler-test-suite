#include <stdio.h>
#include <omp.h>
int func() {
  return 2;
}
long int func2() {
  return 2;
}
struct tag {
  int a;
  long int a2;
};
int main() {
  int tnum1;
  long int tnum2;
  struct tag st;
  int arr[3];
  long int arr2[3];
  int *p;
  long int *p2;
  tnum1 = 2;
  tnum2 = 2;
  st.a = 2;
  st.a2 = 2;
  arr[2] = 2;
  arr2[2] = 2;
  p = &tnum1;
  p2 = &tnum2;
  setenv("OMP_MAX_ACTIVE_LEVELS","1",1);
  omp_set_dynamic(0);
  omp_set_num_threads(1);

  
#pragma omp parallel
  {
#pragma omp parallel num_threads(2)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng1: %d\n", x);
    }
  }
#pragma omp parallel
  {
#pragma omp parallel num_threads(2L)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng2: %d\n", x);
    }
  }
  
#pragma omp parallel
  {
#pragma omp parallel num_threads(tnum1)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng3: %d\n", x);
    }
  }
#pragma omp parallel
  {
#pragma omp parallel num_threads(tnum2)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng4: %d\n", x);
    }
  }
  
#pragma omp parallel
  {
#pragma omp parallel num_threads(tnum1+1)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 3) printf("ng5: %d\n", x);
    }
  }
#pragma omp parallel
  {
#pragma omp parallel num_threads(tnum2+1)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 3) printf("ng6: %d\n", x);
    }
  }
  
#pragma omp parallel
  {
#pragma omp parallel num_threads(func())
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng7: %d\n", x);
    }
  }
#pragma omp parallel
  {
#pragma omp parallel num_threads(func2())
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng8: %d\n", x);
    }
  }
  
#pragma omp parallel
  {
#pragma omp parallel num_threads(st.a)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng9: %d\n", x);
    }
  }
#pragma omp parallel
  {
#pragma omp parallel num_threads(st.a2)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng10: %d\n", x);
    }
  }
  
#pragma omp parallel
  {
#pragma omp parallel num_threads(arr[2])
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng11: %d\n", x);
    }
  }
#pragma omp parallel
  {
#pragma omp parallel num_threads(arr2[st.a2])
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng12: %d\n", x);
    }
  }
  
#pragma omp parallel
  {
#pragma omp parallel num_threads(*p)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng13: %d\n", x);
    }
  }
#pragma omp parallel
  {
#pragma omp parallel num_threads(*p2)
    {
      int x;
      x = omp_get_num_threads();
      if (x != 2) printf("ng14: %d\n", x);
    }
  }
  printf("pass\n");
  return 0;
}
