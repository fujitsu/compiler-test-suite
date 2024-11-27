#include <stdio.h>
int main( ) {

volatile              int a;      
volatile              int b=100;  
volatile static       int c;      
volatile static       int d=200;  
volatile        const int e;      
volatile        const int f=100;  
volatile static const int g;      
volatile static const int h=200;  
int init( );

       a=init( );
       if (a==100) printf(" ok    -(1)\n");
       if (b==100) printf(" ok    -(2)\n");
       c=init( );
       if (c==100) printf(" ok    -(3)\n");
       if (d==200) printf(" ok    -(4)\n");
                   printf(" undef -(5)\n");
       if (f==100) printf(" ok    -(6)\n");
       if (g==  0) printf(" ok    -(7)\n");
       if (h==200) printf(" ok    -(8)\n");
}
int init( ) { return(100);}

  
