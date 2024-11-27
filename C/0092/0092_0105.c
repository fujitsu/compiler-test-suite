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
int cal ;
printf(" *****  ***** \n") ;

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

cal = data1.b1 + data2.b1 + data1.b2 + data2.b2 +
      data1.b3 + data2.b3 + data1.b4 + data2.b4 +
      data1.b5 + data2.b5 + data1.b6 + data2.b6 +
      data1.b7 + data2.b7 + data1.b8 + data2.b8 +
      data1.b9 + data2.b9 + data1.b10 + data2.b10 +
      data3.b1 + data4.b1 + data3.b2 + data4.b2 +
      data3.b3 + data4.b3 + data3.b4 + data4.b4 +
      data3.b5 + data4.b5 + data3.b6 + data4.b6 +
      data3.b7 + data4.b7 + data3.b8 + data4.b8 +
      data3.b9 + data4.b9 + data3.b10 + data4.b10 ;

if ( cal == 40 ) {
	printf(" OK cal = %d \n",cal) ;
} else {
	printf(" NG cal = %d \n",cal) ;
}
}
