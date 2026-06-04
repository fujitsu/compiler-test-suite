
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

int main()
{
  int ln1_1=0, ln1_2=0;

  ln1_1 = extern_ln1(ln1_1);
  ln1_2 = static_ln1(ln1_2);

  printf(" OK \n");
  return 0;
}
