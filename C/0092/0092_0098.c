#include <stdio.h>

int main() {
int a[10],b[10],c[10], i ;
printf(" *****  ***** \n") ;

for ( i=0;i<10;i++) {
	a[i] = i ;
	b[i] = i*i ;
	c[i] = i ;
}

for ( i=0;i<10;i++) {
	a[i] = b[i] + c[i] ;
}
if( a[5] == 30 )  
  printf(" ** OK ** \n") ;
else
  printf(" ** NG ** a[5] = %d \n",a[5]) ;
}
