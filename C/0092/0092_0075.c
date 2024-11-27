#include <stdio.h>

int main( ) {
 

 


 volatile float        f1,f2,f3;
 volatile double       d1,d2,d3;
 volatile long double  x1,x2,x3;

 
 f2=10.0f;
 f3=f2 / 0.0f;
               if (f3== 0.0f) printf("(01) 0 div\n");
               else           printf("(01) 0 div\n");                           
 f2=11.0f;
 f3= 0.0f / f2;
               if (f3==0.0f) printf("(02) ok\n");
               else          printf("(02) ng\n");                           
 d2=12.0 ;
 d3=d2 / 0.0 ;
               if (d3== 0.0 ) printf("(03) 0 div\n");
               else           printf("(03) 0 div\n");                           
 d2=13.0 ;
 d3= 0.0  / d2;
               if (d3==0.0 ) printf("(04) ok\n");
               else          printf("(04) ng\n");                           
}
