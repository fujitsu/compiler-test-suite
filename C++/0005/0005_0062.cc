#include <stdio.h>
void sub() {
  static signed char          i1;
  static signed short         i2;
  static signed int           i4;
  static signed long long int i8;
  static unsigned char          u1;
  static unsigned short         u2;
  static unsigned int           u4;
  static unsigned long long int u8;
  static float       r4;
  static double      r8;
#ifdef RED_R16
  static long double r16;
#else
  static double r16;
#endif
#if defined(__cplusplus)
  static bool        b1;
  static wchar_t     c4; 
#else
  static _Bool       b1;
  static char        c4; 
#endif
  static char  c1; 
  int i, n;
  n = 10;

#pragma omp single
  {
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
  }

#pragma omp for reduction(max:i1,i2,i4,i8)
  for ( i = 0; i <= n; i++) {
    i1 = i;
    i2 = i;
    i4 = i;
    i8 = i;
  }

#pragma omp for reduction(max:u1,u2,u4,u8)
  for ( i = 0; i <= n; i++) {
    u1 = i;
    u2 = i;
    u4 = i;
    u8 = i;
  }

#pragma omp for reduction(max:r4,r8,r16,b1,c1,c4)
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
    printf("NG101\n");
  }
}

int main() {
#pragma omp parallel
  {
    sub();
  }
  printf("pass\n");
  return 0;
}
