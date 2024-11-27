#include <stdio.h>
#include <float.h>
#include <limits.h>

#include <fenv.h>
#define SETROUND_RN()  fesetround(FE_TONEAREST)
#define SETROUND_RZ()  fesetround(FE_TOWARDZERO)
#define SETROUND_RP()  fesetround(FE_UPWARD)
#define SETROUND_RM()  fesetround(FE_DOWNWARD)

int main()
{
  double d;
  float f0,f1,f2,f3;
  double x1,x2,x3;

  x1=x2=x3=0;
  
  for(d=0x3fffff;;d++) {
    SETROUND_RN();           
    f0 = d;
    SETROUND_RZ();
    f1 = d;
    SETROUND_RP();
    f2 = d;
    SETROUND_RM();
    f3 = d;
    SETROUND_RN();           
    if( f0 != f1 ) {
      x1 = d;
    }
    if( f0 != f2 ) {
      x2 = d;
    }
    if( f0 != f3 ) {
      x3 = d;
    }
    if( x1 && x2 && x3 ) break;
  }
  printf("%g %g %g\n",x1,x2,x3);
  SETROUND_RZ();
  f1 = x1;
  printf("%f\n",f1);
  SETROUND_RP();
  f2 = x2;
  printf("%f\n",f2);
  SETROUND_RM();
  f3 = x3;
  printf("%f\n",f3);

  return 0;
}

