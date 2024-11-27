#include <stdlib.h>
#include <math.h>
#include <stdio.h>
struct {
	unsigned int b1 : 1;
	unsigned int b2 : 1;
	unsigned int b3 : 1;
	unsigned int b4 : 1;
	unsigned int b5 : 1;
	unsigned int b6 : 1;
	unsigned int b7 : 1;
	unsigned int b8 : 1;
	unsigned int b9 : 1;
	unsigned int b10 : 1;
} data1 ;
struct {
	unsigned int b1 : 1;
	unsigned int b2 : 1;
	unsigned int b3 : 1;
	unsigned int b4 : 1;
	unsigned int b5 : 1;
	unsigned int b6 : 1;
	unsigned int b7 : 1;
	unsigned int b8 : 1;
	unsigned int b9 : 1;
	unsigned int b10 : 1;
} data2 ;
struct {
	unsigned int b1 : 1;
	unsigned int b2 : 1;
	unsigned int b3 : 1;
	unsigned int b4 : 1;
	unsigned int b5 : 1;
	unsigned int b6 : 1;
	unsigned int b7 : 1;
	unsigned int b8 : 1;
	unsigned int b9 : 1;
	unsigned int b10 : 1;
} data3 ;
struct {
	unsigned int b1 : 1;
	unsigned int b2 : 1;
	unsigned int b3 : 1;
	unsigned int b4 : 1;
	unsigned int b5 : 1;
	unsigned int b6 : 1;
	unsigned int b7 : 1;
	unsigned int b8 : 1;
	unsigned int b9 : 1;
	unsigned int b10 : 1;
} data4 ;   
int main() {
long cal ;
long func() ;
printf(" ***** mreg0380 ***** \n") ;

data1.b1 = 1 ; data2.b1 = 1 ; data1.b2 = 1 ; data2.b2 = 1 ;
data1.b3 = 1 ; data2.b3 = 1 ; data1.b4 = 1 ; data2.b4 = 1 ;
data1.b5 = 1 ; data2.b5 = 1 ; data1.b6 = 1 ; data2.b6 = 1 ;
data1.b7 = 1 ; data2.b7 = 1 ; data1.b8 = 1 ; data2.b8 = 1 ;
data1.b9 = 1 ; data2.b9 = 1 ; data1.b10 = 1 ; data2.b10 = 1 ;

data3.b1 = 1 ; data4.b1 = 1 ; data3.b2 = 1 ; data4.b2 = 1 ;
data3.b3 = 1 ; data4.b3 = 1 ; data3.b4 = 1 ; data4.b4 = 1 ;
data3.b5 = 1 ; data4.b5 = 1 ; data3.b6 = 1 ; data4.b6 = 1 ;
data3.b7 = 1 ; data4.b7 = 1 ; data3.b8 = 1 ; data4.b8 = 1 ;
data3.b9 = 1 ; data4.b9 = 1 ; data3.b10 = 1 ; data4.b10 = 1 ;

cal = func(data1.b1,data2.b1,data1.b2,data2.b2,
           data1.b3,data2.b3,data1.b4,data2.b4,
           data1.b5,data2.b5,data1.b6,data2.b6,
           data1.b7,data2.b7,data1.b8,data2.b8,
           data1.b9,data2.b9,data1.b10,data2.b10,
           data3.b1,data4.b1,data3.b2,data4.b2,
           data3.b3,data4.b3,data3.b4,data4.b4,
           data3.b5,data4.b5,data3.b6,data4.b6,
           data3.b7,data4.b7,data3.b8,data4.b8,
           data3.b9,data4.b9,data3.b10,data4.b10)  ;

cal = cal + data1.b1 + data2.b1 + data1.b2 + data2.b2 +
      data1.b3 + data2.b3 + data1.b4 + data2.b4 +
      data1.b5 + data2.b5 + data1.b6 + data2.b6 +
      data1.b7 + data2.b7 + data1.b8 + data2.b8 +
      data1.b9 + data2.b9 + data1.b10 + data2.b10 +
      data3.b1 + data4.b1 + data3.b2 + data4.b2 +
      data3.b3 + data4.b3 + data3.b4 + data4.b4 +
      data3.b5 + data4.b5 + data3.b6 + data4.b6 +
      data3.b7 + data4.b7 + data3.b8 + data4.b8 +
      data3.b9 + data4.b9 + data3.b10 + data4.b10 ;

if ( cal == 80 ) {
	printf(" OK cal = %d \n",cal) ;
} else {
	printf(" NG cal = %d \n",cal) ;
}
exit (0);
}
long func(i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,
	  i11,i12,i13,i14,i15,i16,i17,i18,i19,i20,
	  i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,
	  i31,i32,i33,i34,i35,i36,i37,i38,i39,i40) 
short     i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,
	  i11,i12,i13,i14,i15,i16,i17,i18,i19,i20,
	  i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,
	  i31,i32,i33,i34,i35,i36,i37,i38,i39,i40 ;
{
   return(i1+i2+i3+i4+i5+i6+i7+i8+i9+i10+
	  i11+i12+i13+i14+i15+i16+i17+i18+i19+i20+
	  i21+i22+i23+i24+i25+i26+i27+i28+i29+i30+
	  i31+i32+i33+i34+i35+i36+i37+i38+i39+i40)  ;
}
