#include <stdio.h>
#include <complex.h>
#include <math.h>
int pk_atanh();
int pk_acosh();
int pk_asinh();
int pk_atanhl();
int pk_acoshl();
int pk_asinhl();
int pk_atanhf();
int pk_acoshf();
int pk_asinhf();

float       ra[16],rb[16], rc[16];
double      da[16],db[16], dc[16];
long double qa[16],qb[16], qc[16];
int main()
{
  int i;
  float j= -0.6,r = 0.1;;

#pragma clang loop vectorize(disable)
  for(i=0;i<16;i++) {
    rb[i] = 16-i;
    rc[i] = j;
    db[i] = 16-i;
    dc[i] = j;
    qb[i] = 16-i;
    qc[i] = j;
    j = j + r;
    if (i == 7) {
      j = 0.9;
      r = -0.1;
    }
  }
  rc[6] = 0.99;
  dc[6] = 0.99;
  qc[6] = 0.99;

  printf("\nfloat_asinh\n");
  pk_asinhf();
  printf("\nfloat_acosh\n");
  pk_acoshf();
  printf("\nfloat_atanh\n");
  pk_atanhf();

  printf("\ndouble_asinh\n");
  pk_asinh();
  printf("\ndouble_acosh\n");
  pk_acosh();
  printf("\ndouble_atanh\n");
  pk_atanh();

  printf("\nlong double _asinh\n");
  pk_asinhl();
  printf("\nlong double _acosh\n");
  pk_acoshl();
  printf("\nlong double _atanh\n");
  pk_atanhl();
  printf("\n");
}

int pk_asinhf() 
{
  int i;
  for(i=0;i<15;i++) {
    ra[i] = asinhf(rb[i]);
  }

  ra[15]=0;
#pragma clang loop unroll(disable)
#pragma clang loop vectorize(disable)
  for(i=0;i<16;i++) {
    printf(" %g ",ra[i]);
  }  
}

int pk_acoshf() 
{
  int i;
  for(i=0;i<15;i++) {
    ra[i] = acoshf(rb[i]);
  }

  ra[15]=0;
#pragma clang loop unroll(disable)
#pragma clang loop vectorize(disable)
  for(i=0;i<16;i++) {
    printf(" %g ",ra[i]);
  }  
}

int pk_atanhf() 
{
  int i;
  for(i=0;i<15;i++) {
    ra[i] = atanhf(rc[i]);
  }

  ra[15]=0;
#pragma clang loop unroll(disable)
#pragma clang loop vectorize(disable)
  for(i=0;i<16;i++) {
    printf(" %g ",ra[i]);
  }  
}


int pk_asinh() 
{
  int i;
  for(i=0;i<15;i++) {
    da[i] = asinh(db[i]);
  }

  da[15]=0;
#pragma clang loop unroll(disable)
#pragma clang loop vectorize(disable)
  for(i=0;i<16;i++) {
    printf(" %g ",da[i]);
  }  
}

int pk_acosh() 
{
  int i;
  for(i=0;i<15;i++) {
    da[i] = acosh(db[i]);
  }

  da[15]=0;
#pragma clang loop unroll(disable)
#pragma clang loop vectorize(disable)
  for(i=0;i<16;i++) {
    printf(" %g ",da[i]);
  }  
}

int pk_atanh() 
{
  int i;
  for(i=0;i<15;i++) {
    da[i] = atanh(dc[i]);
  }

  da[15]=0;
#pragma clang loop unroll(disable)
#pragma clang loop vectorize(disable)
  for(i=0;i<16;i++) {
    printf(" %g ",da[i]);
  }  
}

int pk_asinhl() 
{
  int i;
  for(i=0;i<15;i++) {
    qa[i] = asinhl(qb[i]);
  }

  qa[15]=0;
#pragma clang loop unroll(disable)
#pragma clang loop vectorize(disable)
  for(i=0;i<16;i++) {
    printf(" %Lg ",qa[i]);
  }  
}

int pk_acoshl() 
{
  int i;
  for(i=0;i<15;i++) {
    qa[i] = acoshl(qb[i]);
  }

  qa[15]=0;
#pragma clang loop unroll(disable)
#pragma clang loop vectorize(disable)
  for(i=0;i<16;i++) {
    printf(" %Lg ",qa[i]);
  }  
}

int pk_atanhl() 
{
  int i;
  for(i=0;i<15;i++) {
    qa[i] = atanhl(qc[i]);
  }

  qa[15]=0;
#pragma clang loop unroll(disable)
#pragma clang loop vectorize(disable)
  for(i=0;i<16;i++) {
    printf(" %Lg ",qa[i]);
  }  
}



