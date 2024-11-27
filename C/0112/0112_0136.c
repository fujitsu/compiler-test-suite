#include <stdio.h>
#include <math.h>
#include <complex.h>
int c32();
int c16();
int c8();
int r16();
int r8();
int r4();
int main()
{
  r4();
  r8();
  r16();
  c8();
  c16();
  c32();
  return 0;
}

int r4()
{
  float  a[10],b[10],c[10];
  int i;

  for(i=0;i<10;i++) {
    a[i] = 0.0;
    b[i] = i ;
    c[i] = 2.0 ;
  }
  
  for(i=0;i<10;i++) {
    a[i] = powf(b[i] , c[i]);
  }
  for(i=0;i<10;i++) {
    printf("%g ",  a[i]);
  }
  printf("\n\n");
}

int r8()
{
  double a[10],b[10],c[10];
  int i;

  for(i=0;i<10;i++) {
    a[i] = 0.0;
    b[i] = i ;
    c[i] = 2.0 ;
  }
  
  for(i=0;i<10;i++) {
    a[i] = pow(b[i] , c[i]);
  }
  for(i=0;i<10;i++) {
    printf("%g ",  a[i]);
  }
  printf("\n\n");
}

int r16()
{
  long double a[10],b[10],c[10];
  int i;

  for(i=0;i<10;i++) {
    a[i] = 0.0;
    b[i] = i ;
    c[i] = 2.0 ;
  }
  
  for(i=0;i<10;i++) {
    a[i] = powl(b[i] , c[i]);
  }
  for(i=0;i<10;i++) {
    printf("%Lg ",  a[i]);
  }
  printf("\n\n");
}

int c8()
{
  float _Complex a[10],b[10],c[10];
  int i;

  for(i=0;i<10;i++) {
    a[i] = 0.0 + 0.0i;
    b[i] = i + 2.0i;
    c[i] = 3.0 + 4.0i;
  }
  
  for(i=0;i<10;i++) {
    a[i] = cpowf(b[i] , c[i]);
  }
  for(i=0;i<10;i++) {
    printf("(%8.3f %8.3f) ",  crealf(a[i]),cimagf(a[i]));
  }
  printf("\n\n");
}

int c16()
{
  double _Complex a[10],b[10],c[10];
  int i;
  for(i=0;i<10;i++) {
    a[i] = 0.0 + 0.0i;
    b[i] = i + 2.0i;
    c[i] = 3.0 + 4.0i;
  }
  for(i=0;i<10;i++) {
    a[i] = cpow(b[i] , c[i]);
  }
  for(i=0;i<10;i++) {
    printf("(%8.3f %8.3f) ",  creal(a[i]),cimag(a[i]));
  }
  printf("\n\n");
}

int c32()
{
  long double _Complex a[10],b[10],c[10];
  int i;
  for(i=0;i<10;i++) {
    a[i] = 0.0 + 0.0i;
    b[i] = i + 2.0i;
    c[i] = 3.0 + 4.0i;
  }
  for(i=0;i<10;i++) {
    a[i] = cpowl(b[i] , c[i]);
  }
  for(i=0;i<10;i++) {
    printf("(%8.3f %8.3f) ",  (float)creall(a[i]),(float)cimagl(a[i]));
  }
  printf("\n\n");
}

