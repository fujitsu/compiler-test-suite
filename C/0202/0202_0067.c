
#include <stdio.h>

  int extern_ln1(int ln1_1) {
    ln1_1 = 1;
    return ln1_1;
  }

  static int static_ln1(int ln1_1) {
    ln1_1 = 10;
    return ln1_1;
  }

#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
#endif 

int sub (int n)
{
  int ln1_1=0, ln1_2=0;

  switch (n) {
  case 1:
    return extern_ln1(ln1_1);
  case 2:
    return static_ln1(ln1_2);
  }

  return 0;
}

int main()
{
  int ln1_1 = 0;

  ln1_1 = sub(1);
  ln1_1 = sub(2);

  printf(" OK \n");
  return ln1_1;
}
