#include <stdio.h>
#include <float.h>
#include <math.h>

int main(void){
  int b = FLT_RADIX;

  int p_f = FLT_MANT_DIG;
  int p_d = DBL_MANT_DIG;
  int p_l = LDBL_MANT_DIG;
  double d_f, d_d, d_l;

#if 0
#else
  d_f = ceil( 1 + p_f * log10(b) );
  d_d = ceil( 1 + p_d * log10(b) );
  d_l = ceil( 1 + p_l * log10(b) );
  if (d_f == 9 && d_d == 17 &&
#if defined(__x86_64)
      d_l == 21
#else
      d_l == 36
#endif
     ) {
    printf("ok\n");
  }
  else {
    printf("ng\n");
  }
#endif

  return 0;
}
