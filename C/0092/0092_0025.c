#include <stdio.h>
int main( ) {

             int a;      
             int b=100;  
static       int c;      
static       int d=200;  
       const int e;      
       const int f=100;  
static const int g;      
static const int h=200;  
int init( );

       a=init(10);
       if (a==10)  printf(" ok    -(1)\n");
       if (b==100) printf(" ok    -(2)\n");
       c=init(101);
       if (c==101) printf(" ok    -(3)\n");
       if (d==200) printf(" ok    -(4)\n");
                   printf(" undef -(5)\n");
       if (f==100) printf(" ok    -(6)\n");
       if (g==  0) printf(" ok    -(7)\n");
       if (h==200) printf(" ok    -(8)\n");
}
int init(int x ) { return(x);}

  
