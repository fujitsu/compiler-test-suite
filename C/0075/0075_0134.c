#include <stdio.h>
int sub0( ) { 
volatile     int a[1048555];
     a[0]=10;
     return(a[0]);
}
int sub1( ) { 
volatile     int a[1048557];
     a[0]=11;
     return(a[0]);
}
int sub2( ) { 
volatile     int a[1048563];
     a[0]=12;
     return(a[0]);
}
int sub3( ) { 
volatile     int a[1048572];
     a[0]=13;
     return(a[0]);
}
int sub4( ) { 
volatile     int a[1048573];
     a[0]=14;
     return(a[0]);
}
float sub5( ) { 
volatile     float a[1048570];
     a[0]=10.0f;
     return(a[0]);
}
float sub6( ) { 
volatile     float a[1048573];
     a[0]=11.0f;
     return(a[0]);
}
long double sub7( ) { 
volatile     long double a[262136];
     a[0]=12.0;
     return(a[0]);
}
long double sub8( ) { 
volatile     long double a[262144];
     a[0]=13.0;
     return(a[0]);
}
int main( ){
     int a;
     float b;
     long double c;
     a= sub0( );
                 if (a==10)      printf(" ** P085254 (1) *** OK \n");
                 else            printf(" ** P085254 (1) *** NG \n");
     a= sub1( );
                 if (a==11)      printf(" ** P085254 (2) *** OK \n");
                 else            printf(" ** P085254 (2) *** NG \n");
     a= sub2( );
                 if (a==12)      printf(" ** P085254 (3) *** OK \n");
                 else            printf(" ** P085254 (3) *** NG \n");
     a= sub3( );
                 if (a==13)      printf(" ** P085254 (4) *** OK \n");
                 else            printf(" ** P085254 (4) *** NG \n");
     a= sub4( );
                 if (a==14)      printf(" ** P085254 (5) *** OK \n");
                 else            printf(" ** P085254 (5) *** NG \n");
     b= sub5( );
                 if (b==10.0f)   printf(" ** P085254 (6) *** OK \n");
                 else            printf(" ** P085254 (6) *** NG \n");
     b= sub6( );
                 if (b==11.0f)   printf(" ** P085254 (7) *** OK \n");
                 else            printf(" ** P085254 (7) *** NG \n");
     c= sub7( );
                 if (c==12.0)    printf(" ** P085254 (8) *** OK \n");
                 else            printf(" ** P085254 (8) *** NG \n");
     c= sub8( );
                 if (c==13.0)    printf(" ** P085254 (9) *** OK \n");
                 else            printf(" ** P085254 (9) *** NG \n");
}
