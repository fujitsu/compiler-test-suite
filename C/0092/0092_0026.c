#include <stdio.h>

             int a;      
             int b=100;  
static       int c;      
static       int d=200;  
       const int e;      
       const int f=100;  
static const int g;      
static const int h=200;  
int main( ) {
int init( );

       a=init( );
       if (a==100) printf(" ok    -(1)\n");
       if (b==100) printf(" ok    -(2)\n");
       c=init( );
       if (c==100) printf(" ok    -(3)\n");
       if (d==200) printf(" ok    -(4)\n");
       if (e==  0) printf(" ok    -(5)\n");
       if (f==100) printf(" ok    -(6)\n");
       if (g==  0) printf(" ok    -(7)\n");
       if (h==200) printf(" ok    -(8)\n");
}
int init( ) { return(100);}

  
  
