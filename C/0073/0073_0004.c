#include <stdio.h>

long double vpp_no1 ( ) {
 volatile float        f1,f2,f3,f4,f5;
 volatile double       d1,d2,d3,d4,d5;
 volatile long double  x1,x2,x3,x4,x5;

 f1=0.0f;
 d1=0.0 ;
 x1=0.0l;


 f2=2.0f;
 f3=f2 + 0.0f;
 f2=3.0f;
 f4=0.0f + f2; 
                 f5=f3+f4;
 d2=2.0 ;
 d3=d2 + 0.0 ;
 d2=3.0 ;
 d4=0.0  + d2;
                 d5=d3+d4;

 f2=5.0f;
 f3=f2 - 0.0f;
 f2=5.0f;
 f4= 0.0f - f2;
                 f5+=f3 + f4;
 d2=5.0 ;
 d3=d2 - 0.0 ;
 d2=5.0 ;
 d4= 0.0  - d2;
                 d5+=d3 + d4;

 return (long double)f5+d5;
}

 volatile float        f1,f2,f3,f4,f5;
 volatile double       d1,d2,d3,d4,d5;
 volatile long double  x1,x2,x3,x4,x5;
long double vpp_no2 ( ) {
 f1=0.0f;
 d1=0.0 ;
 x1=0.0l;

 f2=2.0f;
 f3=f2 + 0.0f;
 f2=3.0f;
 f4= 0.0f + f2;
                 f5 = f3 + f4;
 d2=2.0 ;
 d3=d2 + 0.0 ;
 d2=3.0 ;
 d4= 0.0  + d2;
                 d5 = d3 + d4;

 f2=5.0f;
 f3=f2 - 0.0f;
 f2=5.0f;
 f4= 0.0f - f2;
                 f5 += f3 + f4;
 d2=5.0 ;
 d3=d2 - 0.0 ;
 d2=5.0 ;
 d4= 0.0  - d2;
                 d5 += d3 + d4;
 return (long double)f5+d5;
}

long double vpp_no3 ( ) {
 volatile float        f1,f2,f3,f4,f5;
 volatile double       d1,d2,d3,d4,d5;
 volatile long double  x1,x2,x3,x4,x5;

 f2=10.0f;
 f3=f2 * 0.0f;
 f2=11.0f;
 f4= 0.0f * f2;
                 f5 = f4 + f3;
 d2=12.0 ;
 d3=d2 * 0.0 ;
 d2=13.0 ;
 d4= 0.0  * d2;
                 d5 = d4 + d3;
 return (long double)(f5 + d5);
}

long double vpp_no4 ( ) {
 volatile float        f1,f2,f3,f4,f5=0.0f;
 volatile double       d1,d2,d3,d4,d5=0.0;
 volatile long double  x1,x2,x3,x4,x5;

 f2=11.0f;
 f4= 0.0f / f2;

 d2=13.0 ;
 d4= 0.0  / d2;
 return (long double)f4+d4;
}

long double vpp_no5( ) { 
  int i,j;
  long double z[10],c;
  double      x[10],a;
  float       y[10],b;


  for(i=0;i<10;i++) {
     for(j=0,b=0.0f; j<10; j++) {
        b=b + 1.0f;
     }
     y[i]=b;
  }

  for(i=0;i<10;i++) {
     for(j=0,a=0.0; j<10; j++) {
        a=a + 1.0;
     }
     x[i]=a;
  }
  for(i=0;i<10;i++) {
     for(j=0,c=0.0l; j<10; j++) {
        c=c + 1.0l;
     }
     z[i]=c;
  }
  for(i=0;i<10;i++) {
    x[0]+=x[i]; 
    y[0]+=y[i]; 
    z[0]+=z[i]; 
  }
  return (long double)(x[0]+y[0]+z[0]);
}
int main( ) {
  long double vpp_no1( );
  long double vpp_no2( );
  long double vpp_no3( );
  long double vpp_no4( );
  long double vpp_no5( );
  if (vpp_no1( )== 10.0l) printf("ok 1\n");
  else                    printf("ng 1\n");
  if (vpp_no2( )== 10.0l) printf("ok 2\n");
  else                    printf("ng 2\n");
  if (vpp_no3( )==  0.0l) printf("ok 3\n");
  else                    printf("ng 3\n");
  if (vpp_no4( )==  0.0l) printf("ok 4\n");
  else                    printf("ng 4\n");
  if (vpp_no5( )== 330.0l) printf("ok 5\n");
  else                    printf("ng 5\n");
}
  
