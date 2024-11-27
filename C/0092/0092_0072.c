#include <stdio.h>

int main( ) {
 volatile float        f1,f2,f3;
 volatile double       d1,d2,d3;
 volatile long double  x1,x2,x3;
 
 f1=0.0f;
 d1=0.0 ;
 x1=0.0l;

 
 f2=2.0f;
 f3=f2 + 0.0f;
               if (f3==2.0f) printf("(01) ok\n");
               else          printf("(01) ng\n");                           
 f2=3.0f;
 f3= 0.0f + f2;
               if (f3==3.0f) printf("(02) ok\n");
               else          printf("(02) ng\n");                           
 d2=2.0 ;
 d3=d2 + 0.0 ;
               if (d3==2.0 ) printf("(03) ok\n");
               else          printf("(03) ng\n");                           
 d2=3.0 ;
 d3= 0.0  + d2;
               if (d3==3.0 ) printf("(04) ok\n");
               else          printf("(04) ng\n");                           
 
 f2=5.0f;
 f3=f2 - 0.0f;
               if (f2==5.0f) printf("(05) ok\n");
               else          printf("(05) ng\n");                           
 f2=5.0f;
 f3= 0.0f - f2;
               if (f2==5.0f) printf("(06) ok\n");
               else          printf("(06) ng\n");                           
 d2=5.0 ;
 d3=d2 - 0.0 ;
               if (d2==5.0 ) printf("(07) ok\n");
               else          printf("(07) ng\n");                           
 d2=5.0 ;
 d3= 0.0  - d2;
               if (d2==5.0 ) printf("(08) ok\n");
               else          printf("(08) ng\n");                           
}
