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
  char  c1; 

  i1 = 10;
  i2 = 10;
  i4 = 10;
  i8 = 10;
  u1 = 10;
  u2 = 10;
  u4 = 10;
  u8 = 10;
  r4 = 10.0;
  r8 = 10.0;
  r16 = 10.0;
  b1 = 10;
  c1 = 10;
  c4 = 10;

#pragma omp parallel reduction(min:i1,i2,i4,i8)
  {
    i1 = 1;
    i2 = 1;
    i4 = 1;
    i8 = 1;
  }

#pragma omp parallel reduction(min:u1,u2,u4,u8)
  {
    u1 = 2;
    u2 = 2;
    u4 = 2;
    u8 = 2;
  }

#pragma omp parallel reduction(min:r4,r8,r16,b1,c1,c4)
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
