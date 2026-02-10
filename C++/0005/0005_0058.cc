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
  int i, n;
  n = 10;

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

#pragma omp parallel for reduction(max:i1,i2,i4,i8)
  for ( i = 0; i <= n; i++) {
    i1 = i;
    i2 = i;
    i4 = i;
    i8 = i;
  }

#pragma omp parallel for reduction(max:u1,u2,u4,u8)
  for ( i = 0; i <= n; i++) {
    u1 = i;
    u2 = i;
    u4 = i;
    u8 = i;
  }

#pragma omp parallel for reduction(max:r4,r8,r16,b1,c1,c4)
  for ( i = 0; i <= n; i++) {
    r4 = i;
    r8 = i;
    r16 = i;
    b1 = i;
    c1 = i;
    c4 = i;
  }

  if (i1 != n || i2 != n || i4 != n || i8 != n ||
      u1 != n || u2 != n || u4 != n || u8 != n ||
      r4 != n || r8 != n || r16 != n || b1 != 1 ||
      c1 != n || c4 != n) {
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
