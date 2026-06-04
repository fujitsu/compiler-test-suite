
#include <stdio.h>

  struct St1 {
    int  St1_i;
    long St1_l;
  };

  struct St1 extern_St1(struct St1 St1_1) {
    St1_1.St1_i = 1;
    St1_1.St1_l = 10;
    return St1_1;
  }

  static struct St1 static_St1(struct St1 St1_1) {
    St1_1.St1_i = 1;
    St1_1.St1_l = 10;
    return St1_1;
  }

#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
#endif 

int main()
{
  struct St1 St1_0 = {0, 0};
  struct St1 St1_1 = extern_St1(St1_0);
  struct St1 St1_2 = static_St1(St1_0);

  printf(" OK \n");
  return 0;
}
