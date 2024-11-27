#include <stdio.h>
#include <complex.h>
#include <math.h>
void complex_acos();
void complex_asin();
void complex_atan();
void complex_tan();
void complex_acosh();
void complex_asinh();
void complex_tanh();
void complex_cosh();
void complex_sinh();
void complex_atanh();

float complex a[16];
float complex b[16];
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

  printf("\ncomplex_atan\n");
  complex_atan();
  printf("\ncomplex_sinh\n");
  complex_sinh();
  printf("\ncomplex_cosh\n");
  complex_cosh();
  printf("\ncomplex_tanh\n");
  complex_tanh();
  printf("\ncomplex_asin\n");
  complex_asin();
  printf("\ncomplex_acos\n");
  complex_acos();
  printf("\ncomplex_tan\n");
  complex_tan();
  printf("\ncomplex_acosh\n");
  complex_acosh();
  printf("\ncomplex_asinh\n");
  complex_asinh();
  printf("\ncomplex_atanh\n");
  complex_atanh();
}

void complex_atan() 
{
  int i;
  for(i=0;i<15;i++) {
    a[i] = catanf(b[i]);
  }

  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",crealf(a[i]), cimagf(a[i]));
  }  
}

void complex_sinh() 
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

void complex_cosh() 
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

void complex_tanh() 
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

void complex_asin() 
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

void complex_acos() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = cacosf(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",crealf(a[i]), cimagf(a[i]));
  }  
  
}

void complex_tan() 
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

void complex_acosh() 
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
void complex_asinh() 
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
void complex_atanh() 
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

