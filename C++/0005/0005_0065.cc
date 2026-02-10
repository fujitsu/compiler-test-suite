#include <stdio.h>
#include <unistd.h>
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
  static char        c1; 
  int n;
  n = 1;

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

#pragma omp sections reduction(min:i1,i2,i4,i8)
  {
#pragma omp section
    {
      i1 = 4;
      i2 = 4;
      i4 = 4;
      i8 = 4;
      sleep(1); 
    }
#pragma omp section
    {
      i1 = 3;
      i2 = 3;
      i4 = 3;
      i8 = 3;
      sleep(1); 
    }
#pragma omp section
    {
      i1 = 2;
      i2 = 2;
      i4 = 2;
      i8 = 2;
      sleep(1); 
    }
#pragma omp section
    {
      i1 = 1;
      i2 = 1;
      i4 = 1;
      i8 = 1;
      sleep(1); 
    }
  }

#pragma omp sections reduction(min:u1,u2,u4,u8)
  {
#pragma omp section
    {
      u1 = 4;
      u2 = 4;
      u4 = 4;
      u8 = 4;
      sleep(1); 
    }
#pragma omp section
    {
      u1 = 3;
      u2 = 3;
      u4 = 3;
      u8 = 3;
      sleep(1); 
    }
#pragma omp section
    {
      u1 = 2;
      u2 = 2;
      u4 = 2;
      u8 = 2;
      sleep(1); 
    }
#pragma omp section
    {
      u1 = 1;
      u2 = 1;
      u4 = 1;
      u8 = 1;
      sleep(1); 
    }
  }

#pragma omp sections reduction(min:r4,r8,r16,b1,c1,c4)
  {
#pragma omp section
    {
      r4 = 4;
      r8 = 4;
      r16 = 4;
      b1 = 4;
      c1 = 4;
      c4 = 4;
      sleep(1); 
    }
#pragma omp section
    {
      r4 = 3;
      r8 = 3;
      r16 = 3;
      b1 = 3;
      c1 = 3;
      c4 = 3;
      sleep(1); 
    }
#pragma omp section
    {
      r4 = 2;
      r8 = 2;
      r16 = 2;
      b1 = 2;
      c1 = 2;
      c4 = 2;
      sleep(1); 
    }
#pragma omp section
    {
      r4 = 1;
      r8 = 1;
      r16 = 1;
      b1 = 1;
      c1 = 1;
      c4 = 1;
      sleep(1); 
    }
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
