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
  int i;
  float f0,f1,f2,f3;
  int   x1,x2,x3;

  x1=x2=x3=0;
  
  for(i=16777217;i<INT_MAX;i++) {
    SETROUND_RN();           
    f0 = i;
    SETROUND_RZ();
    f1 = i;
    SETROUND_RP();
    f2 = i;
    SETROUND_RM();
    f3 = i;
    SETROUND_RN();           
    if( f0 != f1 ) {
      x1 = i;
    }
    if( f0 != f2 ) {
      x2 = i;
    }
    if( f0 != f3 ) {
      x3 = i;
    }
    if( x1 && x2 && x3 ) break;
  }
  printf("%d %d %d\n",x1,x2,x3);
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

