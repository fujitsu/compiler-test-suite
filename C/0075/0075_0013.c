#include <stdio.h>
int main()
{
    double a[10]={3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0} ;
    double c[10]={2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0} ;

    int i  ;
    double b ;

    for(i=1;i<10;i++) {
	b = a[i];
	b = b + c[i-1] ;
	c[i] = b ;
    }

    for(i=0;i<10;i++) {
	printf("%G ",c[i]);
    }
    printf("\n");
}
