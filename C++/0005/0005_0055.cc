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
  int i;

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

#pragma omp parallel
  {
#pragma omp for reduction(min:i1,i2,i4,i8)
    for ( i = 9; i >= 0; i--) {
      i1 = i;
      i2 = i;
      i4 = i;
      i8 = i;
    }
  }

#pragma omp parallel
  {
#pragma omp for reduction(min:u1,u2,u4,u8)
    for ( i = 9; i >= 0; i--) {
      u1 = i;
      u2 = i;
      u4 = i;
      u8 = i;
    }
  }

#pragma omp parallel
  {
#pragma omp for reduction(min:r4,r8,r16,b1,c1,c4)
    for ( i = 9; i >= 0; i--) {
      r4 = i;
      r8 = i;
      r16 = i;
      b1 = i;
      c1 = i;
      c4 = i;
    }
  }

  if (i1 != 0 || i2 != 0 || i4 != 0 || i8 != 0 ||
      u1 != 0 || u2 != 0 || u4 != 0 || u8 != 0 ||
      r4 != 0 || r8 != 0 || r16 != 0 || b1 != 0 ||
      c1 != 0 || c4 != 0) {
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
