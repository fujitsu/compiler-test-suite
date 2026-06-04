
#include <stdio.h>

  struct St1 {
    int  St1_i;
    long St1_l;
  };

  int extern_St_i_1(struct St1 St1_1) {
    St1_1.St1_i = 1;
    St1_1.St1_l = 10;
    return St1_1.St1_i;
  }

  static long static_St_i_1(struct St1 St1_1) {
    St1_1.St1_i = 1;
    St1_1.St1_l = 10;
    return St1_1.St1_l;
  }

#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
#endif 

int main()
{
  struct St1 St1_1={0,0}, St1_2={0,0};

  St1_1.St1_i = 1 + extern_St_i_1(St1_1);
  St1_2.St1_l = 1 + static_St_i_1(St1_2);
  
  printf(" OK \n");
  return 0;
}
