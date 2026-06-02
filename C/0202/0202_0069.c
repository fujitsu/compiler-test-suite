
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

int sub (int n)
{
  struct St1 St1_1={0,0}, St1_2={0,0};

  switch (n) {
  case 1:
    return extern_St_i_1(St1_1);
  case 2:
    return static_St_i_1(St1_2);
  }

  return 0;
}

int main()
{
  int i;

  i = sub(1);
  i = sub(2);

  if (i == 0) {}
  printf(" OK \n");
  return 0;
}
