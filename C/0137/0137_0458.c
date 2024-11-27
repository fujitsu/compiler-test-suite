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
	unsigned int b11 : 1;
	unsigned int b12 : 1;
	unsigned int b13 : 1;
	unsigned int b14 : 1;
	unsigned int b15 : 1;
	unsigned int b16 : 1;
	unsigned int b17 : 1;
	unsigned int b18 : 1;
	unsigned int b19 : 1;
	unsigned int b20 : 1;
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
	unsigned int b11 : 1;
	unsigned int b12 : 1;
	unsigned int b13 : 1;
	unsigned int b14 : 1;
	unsigned int b15 : 1;
	unsigned int b16 : 1;
	unsigned int b17 : 1;
	unsigned int b18 : 1;
	unsigned int b19 : 1;
	unsigned int b20 : 1;
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
	unsigned int b11 : 1;
	unsigned int b12 : 1;
	unsigned int b13 : 1;
	unsigned int b14 : 1;
	unsigned int b15 : 1;
	unsigned int b16 : 1;
	unsigned int b17 : 1;
	unsigned int b18 : 1;
	unsigned int b19 : 1;
	unsigned int b20 : 1;
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
	unsigned int b11 : 1;
	unsigned int b12 : 1;
	unsigned int b13 : 1;
	unsigned int b14 : 1;
	unsigned int b15 : 1;
	unsigned int b16 : 1;
	unsigned int b17 : 1;
	unsigned int b18 : 1;
	unsigned int b19 : 1;
	unsigned int b20 : 1;
} data4 ;   
int main() {
int cal ;
printf(" ***** mreg0378 ***** \n") ;

data1.b1 = 1 ; data2.b1 = 1 ; data1.b2 = 1 ; data2.b2 = 1 ;
data1.b3 = 1 ; data2.b3 = 1 ; data1.b4 = 1 ; data2.b4 = 1 ;
data1.b5 = 1 ; data2.b5 = 1 ; data1.b6 = 1 ; data2.b6 = 1 ;
data1.b7 = 1 ; data2.b7 = 1 ; data1.b8 = 1 ; data2.b8 = 1 ;
data1.b9 = 1 ; data2.b9 = 1 ; data1.b10 = 1 ; data2.b10 = 1 ;

data1.b11 = 1 ; data2.b11 = 1 ; data1.b12 = 1 ; data2.b12 = 1 ;
data1.b13 = 1 ; data2.b13 = 1 ; data1.b14 = 1 ; data2.b14 = 1 ;
data1.b15 = 1 ; data2.b15 = 1 ; data1.b16 = 1 ; data2.b16 = 1 ;
data1.b17 = 1 ; data2.b17 = 1 ; data1.b18 = 1 ; data2.b18 = 1 ;
data1.b19 = 1 ; data2.b19 = 1 ; data1.b20 = 1 ; data2.b20 = 1 ;

data3.b1 = 1 ; data4.b1 = 1 ; data3.b2 = 1 ; data4.b2 = 1 ;
data3.b3 = 1 ; data4.b3 = 1 ; data3.b4 = 1 ; data4.b4 = 1 ;
data3.b5 = 1 ; data4.b5 = 1 ; data3.b6 = 1 ; data4.b6 = 1 ;
data3.b7 = 1 ; data4.b7 = 1 ; data3.b8 = 1 ; data4.b8 = 1 ;
data3.b9 = 1 ; data4.b9 = 1 ; data3.b10 = 1 ; data4.b10 = 1 ;

data3.b11 = 1 ; data4.b11 = 1 ; data3.b12 = 1 ; data4.b12 = 1 ;
data3.b13 = 1 ; data4.b13 = 1 ; data3.b14 = 1 ; data4.b14 = 1 ;
data3.b15 = 1 ; data4.b15 = 1 ; data3.b16 = 1 ; data4.b16 = 1 ;
data3.b17 = 1 ; data4.b17 = 1 ; data3.b18 = 1 ; data4.b18 = 1 ;
data3.b19 = 1 ; data4.b19 = 1 ; data3.b20 = 1 ; data4.b20 = 1 ;

cal = data1.b1 + data2.b1 + data1.b2 + data2.b2 +
      data1.b3 + data2.b3 + data1.b4 + data2.b4 +
      data1.b5 + data2.b5 + data1.b6 + data2.b6 +
      data1.b7 + data2.b7 + data1.b8 + data2.b8 +
      data1.b9 + data2.b9 + data1.b10 + data2.b10 +
      data3.b1 + data4.b1 + data3.b2 + data4.b2 +
      data3.b3 + data4.b3 + data3.b4 + data4.b4 +
      data3.b5 + data4.b5 + data3.b6 + data4.b6 +
      data3.b7 + data4.b7 + data3.b8 + data4.b8 +
      data3.b9 + data4.b9 + data3.b10 + data4.b10 +
      data1.b11 + data2.b11 + data1.b12 + data2.b12 +
      data1.b13 + data2.b13 + data1.b14 + data2.b14 +
      data1.b15 + data2.b15 + data1.b16 + data2.b16 +
      data1.b17 + data2.b17 + data1.b18 + data2.b18 +
      data1.b19 + data2.b19 + data1.b20 + data2.b20 +
      data3.b11 + data4.b11 + data3.b12 + data4.b12 +
      data3.b13 + data4.b13 + data3.b14 + data4.b14 +
      data3.b15 + data4.b15 + data3.b16 + data4.b16 +
      data3.b17 + data4.b17 + data3.b18 + data4.b18 +
      data3.b19 + data4.b19 + data3.b20 + data4.b20 ;

if ( cal == 80 ) {
	printf(" OK cal = %d \n",cal) ;
} else {
	printf(" NG cal = %d \n",cal) ;
}

exit (0);
}
