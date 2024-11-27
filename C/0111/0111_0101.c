#include <stdio.h>
#include <math.h>

void sub(p1,p2,p3,p4,p5,p6)
  float p1,p2,*p3,*p4,p5,p6;
{
  float ar1[10],ar2[10];
  int i;
  
  for(i=0 ; i<10 ; i++) {
    if ( p1 == 0.0 ) *p3=1.0;
    if ( p2 == 0.0 ) *p4=1.0;
    ar1[i] = sin(p5-(*p3));
    ar2[i] = cos(p5-(*p4));
    if ( p1 == 0.0 ) ar1[i] = 0.0;
    if ( p2 == 0.0 ) ar2[i] = 0.0;
  }
  for(i=0 ; i<10 ; i++) {
    *p3 += ar1[i];
    *p4 += ar2[i];
  }
}
int main()
{
  float x=0.0, y=0.0;
  sub(1.0, 2.0, &x, &y, 5.0, 6.0);
  printf("x = %f \n", x );
  printf("y = %f \n", y );
}
