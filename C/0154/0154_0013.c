#include <stdio.h>

void  test(
float i0,
float i1,
double i2,
float i3,
double i4,
float i5
)
{
   if( i5 == 5 ) {
     puts("OK");
   }
   else {
     puts("NG");
   }
}
int main()
{
   test(0,1,2,3,4,5);
}
