#include <stdio.h>
#include <complex.h>
#include <math.h>

float complex a[16];
float complex b[16];

static void complex_cacos() 
{
  int i;
  for(i=0;i<15;i++) {
    a[i] = cacosf(b[i]);
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
    a[i] = cacoshf(b[i]);
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
    a[i] = casinf(b[i]);
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
    a[i] = casinhf(b[i]);
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
    a[i] = catanhf(b[i]);
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
    a[i] = catanf(b[i]);
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
    a[i] = ccoshf(b[i]);
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
    a[i] = csinhf(b[i]);
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
    a[i] = ctanf(b[i]);
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
    a[i] = ctanhf(b[i]);
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
