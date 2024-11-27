#include <stdio.h>
#include <math.h>
int main( ) {
  double a,b;

  b=-1.0;
  a=fabs(b);
  if (a== 1.0) printf("(1) ok\n");
  else          printf("(1) ng\n");

  b=1.1;
  a=fabs(b);
  if (a== 1.1) printf("(2) ok\n");
  else          printf("(2) ng\n");

  b=0.0;
  a=fabs(b);
  if (a== 0.0) printf("(3) ok\n");
  else          printf("(3) ng\n");

  a=fabs(-1.8);
  if (a== 1.8) printf("(4) ok\n");
  else          printf("(4) ng\n");

  a=fabs(0.0); 
  if (a== 0.0) printf("(5) ok\n");
  else          printf("(5) ng\n");

  a=fabs(1.1); 
  if (a== 1.1) printf("(6) ok\n");
  else          printf("(6) ng\n");

}
