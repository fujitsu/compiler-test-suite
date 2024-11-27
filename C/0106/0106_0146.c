#include "stdio.h"
void check1(double *r8){}
void check2(float *r4){}
int main()
{
  double r8[10]={2,2,2,2,2,2,2,2,2,2};
  float  r4a[10]={0,0,0,0,0,0,0,0,0,0},r4b[10]={1,1,1,1,1,1,1,1,1,1};
  float  r4c[10]={2,2,2,2,2,2,2,2,2,2};
  int i,n;
  n = r8[1]*5;

  for(i=0;i<n;i++) {
    r8[i] = r8[i] + 2;
  }
  check1(r8);

  for(i=0;i<n;i++) {
    r4a[i] = r4a[i] + 2;
  }
  check2(r4a);

  for(i=0;i<n;i+=2) {
    r4a[i] = r4b[i] ;
  }
  check2(r4a);

  for(i=0;i<n;i++) {
    r8[i] = r8[i] + 2;
    r4a[i] = r4a[i] + 2;
  }
  check1(r8);
  check2(r4a);


  for(i=0;i<n;i++) {
    r8[i] = r4a[i] + 2;
  }
  check1(r8);

  for(i=0;i<n;i++) {
    r4a[i] = r8[i] + 2;
  }
  check2(r4a);

  for(i=0;i<n;i++) {
    r4a[i] = r4a[i] / r4b[i];
    r4c[i] = r4c[i] + 3;
  }
  check2(r4a);
  check2(r4c);

  for(i=0;i<n;i++) {
    r4a[i] = r4a[i] / r4b[i];
  }
  check2(r4a);

  for(i=1;i<n;i++) {
    r4a[i] = r4a[i] + 2;
    r8[i] =r8[i-1] + 2;
  }
  check1(r8);
  check2(r4a);

  for(i=1;i<n;i++) {
    r4a[i] = r4a[i-1] + 2;
    r8[i] =r8[i] + 2;
  }
  check1(r8);
  check2(r4a);

  for(i=0;i<6;i++) {
    r4a[i] = r4a[i] + 2;
  }
  check2(r4a);
  for(i=0;i<6;i++) {
    r8[i] = r8[i] + 2;
    r4a[i] = r4a[i] + 2;
  }
  check1(r8);
  check2(r4a);

  n=0;
  for(i=0;i<10;i++) {
    if (r4c[i] > 4) {
      r4a[n] = r4b[i] + 3;
      n = n + 1;
    }
  }
  check2(r4a);

  printf("ok\n");
}

