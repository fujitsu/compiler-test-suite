#include <stdio.h>


void test(
float f0,
float f1,
float f2,
float f3,
float f4,
float f5,
float f6,
float f7,
float f8,
float f9,
float f10,
float f11,
float f12,
float f13,
float f14,
float f15,
float f16
)
{
  float f = f0+f1+f2+f3+f4+f5+f6+f7+f8+f9+f10+f11+f12+f13+f14+f15+f16;
  if( f == 136 ) {
    puts("OK1");
  }
  else {
    printf("NG1 %g\n",f);
  }
}
int main()
{
   test(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16);
}

