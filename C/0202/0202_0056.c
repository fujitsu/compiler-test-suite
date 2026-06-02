
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

int main()
{
  _Complex float Co1_0=0;

  _Complex float Co1_1 = extern_Co1(Co1_0);
  _Complex float Co1_2 = static_Co1(Co1_0);

  printf(" OK \n");
  return 0;

}
#else 
int main()
{
  printf(" OK \n");
  return 0;
}
#endif 
