#include <stdio.h>



void  test0(int i0,int i1,int i2,int i3,int i4,int i5,int i6,int i7)
{
   if( i0 == 0 && i1 == 1 && i2 == 2 && i3 == 3 &&
       i4 == 4 && i5 == 5 && i6 == 6 && i7 == 7 ) {
     puts("OK1");
   }
   else {
     puts("NG1");
   }
}

void  test1(signed char i0,unsigned char i1,signed short i2,unsigned short i3,signed int i4,unsigned int i5,signed long i6,unsigned long i7)
{
   if( i0 == 0 && i1 == 1 && i2 == 2 && i3 == 3 &&
       i4 == 4 && i5 == 5 && i6 == 6 && i7 == 7 ) {
     puts("OK2");
   }
   else {
     puts("NG2");
   }
}
int main()
{
   test0(0,1,2,3,4,5,6,7);
   test1(0,1,2,3,4,5,6,7);
}
