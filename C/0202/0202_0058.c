
#include <stdio.h>

  struct St1 {
    int  St1_i;
    long St1_l;
  };

  int * extern_St1(struct St1 St1_1) {
    int *pi;
    St1_1.St1_i = 1;
    St1_1.St1_l = 10;
    pi =&(St1_1.St1_i);
    return pi;
  }

  static long * static_St1(struct St1 St1_1) {
    long *pl;
    St1_1.St1_i = 1;
    St1_1.St1_l = 10;
    pl =&(St1_1.St1_l);
    return pl;
  }

#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
#endif 

int main()
{
  struct St1 St1_1={0,0}, St1_2={0,0};

  int * pi1 = extern_St1(St1_1);
  long *pl1 = static_St1(St1_2);

  if(pi1 && pl1) {}

  printf(" OK \n");
  return 0;
}
