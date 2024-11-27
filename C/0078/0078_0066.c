#include <stdio.h>



void  test(
char i0,
float i1,
short i2,
double i3,
int i4,
float i5,
long i6,
long i7,
double i8)
{
   if( i0 == 0 && i1 == 1 && i2 == 2 && i3 == 3 &&
       i4 == 4 && i5 == 5 && i6 == 6 && i7 == 7 && i8 == 8 ) {
     puts("OK");
   }
   else {
     puts("NG");
   }
}
int main()
{
   test(0,1,2,3,4,5,6,7,8);
}
