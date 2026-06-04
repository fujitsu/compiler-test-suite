
#include <stdio.h>

  struct St1 {
    int  St1_i;
    long St1_l;
  };

  int extern_St1(struct St1 St1_1) {
    St1_1.St1_i = 1;
    St1_1.St1_l = 10;
    return St1_1.St1_i;
  }

  static long static_St1(struct St1 St1_1) {
    St1_1.St1_i = 1;
    St1_1.St1_l = 10;
    return St1_1.St1_l;
  }

#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
#endif 

int main()
{
  int  i=0, *pi = &i;
  long l=0, *pl = &l;
  struct St1 St1_1={0,0}, St1_2={0,0};

  pi += extern_St1(St1_1);
  pl += static_St1(St1_2);

  if(pi && pl) {}

  printf(" OK \n");
  return 0;
}
