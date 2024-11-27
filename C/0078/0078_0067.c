#include <stdio.h>



void  test(
long double i0,long double i1,long double i2,long double i3,
long double i4,long double i5,long double i6,float i7,
long double i8, long double i9,long double i10)
{
   if( i0 == 0 && i1 == 1 && i2 == 2 && i3 == 3 &&
       i4 == 4 && i5 == 5 && i6 == 6 && i7 == 7 &&
       i8 == 8 && i9== 9  && i10 == 10) {
     puts("OK");
   }
   else {
     puts("NG");
   }
}
int main()
{
   test(0,1,2,3,4,5,6,7,8,9,10);
}
