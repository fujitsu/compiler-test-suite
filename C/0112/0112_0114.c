#include <stdio.h>
#include <complex.h>
#include <math.h>
int complex_acos();
int complex_asin();
int complex_atan();
int complex_tan();
int complex_acosh();
int complex_asinh();
int complex_tanh();
int complex_cosh();
int complex_sinh();
int complex_atanh();

double complex a[16];
double complex b[16];
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

int complex_atan() 
{
  int i;
  for(i=0;i<15;i++) {
    a[i] = catan(b[i]);
  }

  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",creal(a[i]), cimag(a[i]));
  }  
}

int complex_sinh() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = csinh(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",creal(a[i]), cimag(a[i]));
  }  
  
}

int complex_cosh() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = ccosh(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",creal(a[i]), cimag(a[i]));
  }  
  
}

int complex_tanh() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = ctanh(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",creal(a[i]), cimag(a[i]));
  }  
  
}

int complex_asin() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = casin(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",creal(a[i]), cimag(a[i]));
  }  
  
}

int complex_acos() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = cacos(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",creal(a[i]), cimag(a[i]));
  }  
  
}

int complex_tan() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = ctan(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",creal(a[i]), cimag(a[i]));
  }  
  
}

int complex_acosh() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = cacosh(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",creal(a[i]), cimag(a[i]));
  }  
  
}
int complex_asinh() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = casinh(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",creal(a[i]), cimag(a[i]));
  }  
  
}
int complex_atanh() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = catanh(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %g  %g\n",creal(a[i]), cimag(a[i]));
  }  
  
}

