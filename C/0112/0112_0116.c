#include <stdio.h>
#include <complex.h>
#include <math.h>

double complex a[16];
double complex b[16];

static void complex_cacos() 
{
  int i;
  for(i=0;i<15;i++) {
    a[i] = cacos(b[i]);
  }

  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",crealf(a[i]), cimagf(a[i]));
  }  
}

static void complex_cacosh() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = cacosh(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",crealf(a[i]), cimagf(a[i]));
  }  
  
}

static void complex_casin() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = casin(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",crealf(a[i]), cimagf(a[i]));
  }  
  
}

static void complex_casinh() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = casinh(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",crealf(a[i]), cimagf(a[i]));
  }  
  
}

static void complex_catanh() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = catanh(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",crealf(a[i]), cimagf(a[i]));
  }  
  
}

static void complex_catan() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = catan(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",crealf(a[i]), cimagf(a[i]));
  }  
  
}

static void complex_ccosh() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = ccosh(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",crealf(a[i]), cimagf(a[i]));
  }  
  
}

static void complex_csinh() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = csinh(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",crealf(a[i]), cimagf(a[i]));
  }  
  
}
static void complex_ctan() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = ctan(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",crealf(a[i]), cimagf(a[i]));
  }  
  
}
static void complex_ctanh() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = ctanh(b[i]);
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
    } else {
      b[i] = (i+1) + (-(16-i))*I;
    }
  }

  printf("\ncomplex_cacos\n");
  complex_cacos();
  printf("\ncomplex_cacosh\n");
  complex_cacosh();
  printf("\ncomplex_casin\n");
  complex_casin();
  printf("\ncomplex_casinh\n");
  complex_casinh();
  printf("\ncomplex_catanh\n");
  complex_catanh();
  printf("\ncomplex_catan\n");
  complex_catan();
  printf("\ncomplex_ccosh\n");
  complex_ccosh();
  printf("\ncomplex_csinh\n");
  complex_csinh();
  printf("\ncomplex_ctan\n");
  complex_ctan();
  printf("\ncomplex_ctanh\n");
  complex_ctanh();
}
