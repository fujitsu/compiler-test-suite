#include <stdio.h>
#include <complex.h>
#include <math.h>

float complex a[16];
float complex b[16];
float complex c[16];

static void complex_cabs() 
{
  int i;
  for(i=0;i<15;i++) {
    a[i] = cabsf(c[i]);
  }

  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",crealf(a[i]), cimagf(a[i]));
  }  
}

static void complex_ccos() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = ccosf(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",crealf(a[i]), cimagf(a[i]));
  }  
  
}

static void complex_cexp() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = cexpf(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",crealf(a[i]), cimagf(a[i]));
  }  
  
}

static void complex_clog() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = clogf(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",crealf(a[i]), cimagf(a[i]));
  }  
  
}

static void complex_csin() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = csinf(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",crealf(a[i]), cimagf(a[i]));
  }  
  
}

static void complex_cpow() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = cpowf(b[i],c[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",crealf(a[i]), cimagf(a[i]));
  }  
  
}
int main()
{
  int i;

#pragma clang loop vectorize(disable)
  for(i=0;i<16;i++) {
    if (i<6) {
      b[i] = -(i+1) + (16-i)*I;
      c[i] = i + -i*I;
    } else {
      b[i] = (i+1) + (-(16-i))*I;
      c[i] = -i + i*I;
    }
  }

  printf("\ncomplex_cabs\n");
  complex_cabs();
  printf("\ncomplex_ccos\n");
  complex_ccos();
  printf("\ncomplex_cexp\n");
  complex_cexp();
  printf("\ncomplex_clog\n");
  complex_clog();
  printf("\ncomplex_csin\n");
  complex_csin();
  printf("\ncomplex_cpow\n");
  complex_cpow();
}
