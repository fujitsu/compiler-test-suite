#include <stdio.h>



void  test(
float i0,
float i1,
double i2,
float i3,
double i4,
float i5,
float i6,
long double i7,
double i8,
long double i9)
{
   if( i0 == 0 && i1 == 1 && i2 == 2 && i3 == 3 &&
       i4 == 4 && i5 == 5 && i6 == 6 && i7 == 7 &&
       i8 == 8 && i9 == 9 ) {
     puts("OK");
   }
   else {
     puts("NG");
   }
}
int main()
{
   test(0,1,2,3,4,5,6,7,8,9);
}
