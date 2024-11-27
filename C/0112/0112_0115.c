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

long double complex a[16];
long double complex b[16];
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
    a[i] = catanl(b[i]);
  }

  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %Lg  %Lg\n",creall(a[i]), cimagl(a[i]));
  }
  return 0;
}

int complex_sinh() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = csinhl(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %Lg  %Lg\n",creall(a[i]), cimagl(a[i]));
  }  
  return 0;
}

int complex_cosh() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = ccoshl(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %Lg  %Lg\n",creall(a[i]), cimagl(a[i]));
  }  
  return 0;
}

int complex_tanh() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = ctanhl(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %Lg  %Lg\n",creall(a[i]), cimagl(a[i]));
  }  
  return 0;
}

int complex_asin() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = casinl(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %Lg  %Lg\n",creall(a[i]), cimagl(a[i]));
  }  
  return 0;
}

int complex_acos() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = cacosl(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %Lg  %Lg\n",creall(a[i]), cimagl(a[i]));
  }  
  return 0;
}

int complex_tan() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = ctanl(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %Lg  %Lg\n",creall(a[i]), cimagl(a[i]));
  }  
  return 0;
}

int complex_acosh() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = cacoshl(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %Lg  %Lg\n",creall(a[i]), cimagl(a[i]));
  }  
  return 0;
}
int complex_asinh() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = casinhl(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %Lg  %Lg\n",creall(a[i]), cimagl(a[i]));
  }  
  return 0;
}
int complex_atanh() 
{
  int i;
  for(i=0;i<16;i++) {
    a[i] = catanhl(b[i]);
  }
  a[15]=0;
#pragma clang loop unroll(disable)
  for(i=0;i<16;i++) {
    printf(" %Lg  %Lg\n",creall(a[i]), cimagl(a[i]));
  }  
  return 0;
}

