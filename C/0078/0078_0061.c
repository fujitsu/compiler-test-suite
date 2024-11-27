#include <stdio.h>

void  testfloat(
float i0,float i1,float i2,float i3,float i4,float i5,float i6,float i7,
float i8,float i9,float i10,float i11,float i12,float i13,float i14,float i15,
float i16,float i17)
{
   if( i0 == 0 && i1 == 1 && i2 == 2 && i3 == 3 &&
       i4 == 4 && i5 == 5 && i6 == 6 && i7 == 7 &&
       i8 == 8 && i9== 9 && i10 == 10 && i11 == 11 &&
       i12 == 12 && i13 == 13 && i14 == 14 && i15 == 15 &&
       i16 == 16 && i17 == 17 ) {
     puts("OK1");
   }
   else {
     puts("NG1");
   }
}

void  testdouble(
double i0,double i1,double i2,double i3,double i4,double i5,double i6,double i7,
double i8,double i9,double i10,double i11,double i12,double i13,double i14,double i15,
double i16,double i17)
{
   if( i0 == 0 && i1 == 1 && i2 == 2 && i3 == 3 &&
       i4 == 4 && i5 == 5 && i6 == 6 && i7 == 7 &&
       i8 == 8 && i9== 9 && i10 == 10 && i11 == 11 &&
       i12 == 12 && i13 == 13 && i14 == 14 && i15 == 15 &&
       i16 == 16 && i17 == 17 ) {
     puts("OK2");
   }
   else {
     puts("NG2");
   }
}

void  testlong_double(
long double i0,long double i1,long double i2,long double i3,
long double i4,long double i5,long double i6,long double i7,
long double i8,long double i9)
{
   if( i0 == 0 && i1 == 1 && i2 == 2 && i3 == 3 &&
       i4 == 4 && i5 == 5 && i6 == 6 && i7 == 7 &&
       i8 == 8 && i9== 9 ) {
     puts("OK3");
   }
   else {
     puts("NG3");
   }
}
int main()
{
   testfloat(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17);
   testdouble(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17);
   testlong_double(0,1,2,3,4,5,6,7,8,9);
}
