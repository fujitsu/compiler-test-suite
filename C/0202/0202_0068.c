
#include <stdio.h>

#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
#include <complex.h>

  _Complex float extern_Co1(_Complex float Co1_1) {
    Co1_1 = 1;
    return Co1_1;
  }

  static _Complex float static_Co1(_Complex float Co1_1) {
    Co1_1 = 10;
    return Co1_1;
  }

_Complex float sub (int n)
{
  _Complex float Co1_1=0, Co1_2=0;

  switch (n) {
  case 1:
    return extern_Co1(Co1_1);
  case 2:
    return static_Co1(Co1_2);
  }

  return 0;
}
int main()
{
  _Complex float Co1_1=0;

  Co1_1 = sub(1);
  Co1_1 = sub(2);

  printf(" OK \n");
  return static_Co1(Co1_1);
}
#else 
int main()
{
  printf(" OK \n");
  return 0;
}
#endif 
