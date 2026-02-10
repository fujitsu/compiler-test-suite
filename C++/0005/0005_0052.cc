#include <stdio.h>
int main() {
  signed char          i1;
  signed short         i2;
  signed int           i4;
  signed long long int i8;
  unsigned char          u1;
  unsigned short         u2;
  unsigned int           u4;
  unsigned long long int u8;
  float       r4;
  double      r8;
#ifdef RED_R16
  long double r16;
#else
  double r16;
#endif
#if defined(__cplusplus)
  bool        b1;
  wchar_t     c4; 
#else
  _Bool       b1;
  char        c4; 
#endif
  char        c1; 

  i1 = 0;
  i2 = 0;
  i4 = 0;
  i8 = 0;
  u1 = 0;
  u2 = 0;
  u4 = 0;
  u8 = 0;
  r4 = 0.0;
  r8 = 0.0;
  r16 = 0.0;
  b1 = 0;
  c1 = 0;
  c4 = 0;

#pragma omp parallel reduction(max:i1,i2,i4,i8)
  {
    i1 = 1;
    i2 = 1;
    i4 = 1;
    i8 = 1;
  }

#pragma omp parallel reduction(max:u1,u2,u4,u8)
  {
    u1 = 2;
    u2 = 2;
    u4 = 2;
    u8 = 2;
  }

#pragma omp parallel reduction(max:r4,r8,r16,b1,c1,c4)
  {
    r4 = 3;
    r8 = 3;
    r16 = 3;
    b1 = 3;
    c1 = 3;
    c4 = 3;
  }

  if (i1 != 1 || i2 != 1 || i4 != 1 || i8 != 1 ||
      u1 != 2 || u2 != 2 || u4 != 2 || u8 != 2 ||
      r4 != 3 || r8 != 3 || r16 != 3 || b1 != 1 ||
      c1 != 3 || c4 != 3) {
    printf("NG\n");
    printf("%d,%d,%d,%lld\n",i1,i2,i4,i8);
    printf("%d,%d,%d,%lld\n",u1,u2,u4,u8);
    printf("%f,%f,%Lf\n",r4,r8,r16);
    printf("%d,%d,%d\n",b1,c1,c4);
  } else {
    printf("OK\n");
  }

  return 0;
}
