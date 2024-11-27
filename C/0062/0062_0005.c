#include <stdio.h>

#define N 100

void foo(a00,a01,a02,a03,a04,a05,a06,a07,a08,a09,
	 a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,
	 b00,b01,b02,b03,b04,b05,b06,b07,b08,b09,
	 b10,b11,b12,b13,b14,b15,b16,b17,b18,b19)
     double * restrict a00;
     double * restrict a01;
     double * restrict a02;
     double * restrict a03;
     double * restrict a04;
     double * restrict a05;
     double * restrict a06;
     double * restrict a07;
     double * restrict a08;
     double * restrict a09;
     double * restrict a10;
     double * restrict a11;
     double * restrict a12;
     double * restrict a13;
     double * restrict a14;
     double * restrict a15;
     double * restrict a16;
     double * restrict a17;
     double * restrict a18;
     double * restrict a19;
     double * restrict b00;
     double * restrict b01;
     double * restrict b02;
     double * restrict b03;
     double * restrict b04;
     double * restrict b05;
     double * restrict b06;
     double * restrict b07;
     double * restrict b08;
     double * restrict b09;
     double * restrict b10;
     double * restrict b11;
     double * restrict b12;
     double * restrict b13;
     double * restrict b14;
     double * restrict b15;
     double * restrict b16;
     double * restrict b17;
     double * restrict b18;
     double * restrict b19;
{
  int i;
  for (i=0; i<N; ++i) {
    a00[i] = a00[i] + b00[i];
    a01[i] = a01[i] + b01[i];
    a02[i] = a02[i] + b02[i];
    a03[i] = a03[i] + b03[i];
    a04[i] = a04[i] + b04[i];
    a05[i] = a05[i] + b05[i];
    a06[i] = a06[i] + b06[i];
    a07[i] = a07[i] + b07[i];
    a08[i] = a08[i] + b08[i];
    a09[i] = a09[i] + b09[i];
    a10[i] = a10[i] + b10[i];
    a11[i] = a11[i] + b11[i];
    a12[i] = a12[i] + b12[i];
    a13[i] = a13[i] + b13[i];
    a14[i] = a14[i] + b14[i];
    a15[i] = a15[i] + b15[i];
    a16[i] = a16[i] + b16[i];
    a17[i] = a17[i] + b17[i];
    a18[i] = a18[i] + b18[i];
    a19[i] = a19[i] + b19[i];
  }
}

#define ABS(x) (((x)>0.0) ? (x) : (-x))

int main(void)
{
  const double ans=400.0;
  const double absolute_error=0.000001;
  double x;
  double a00[N],a01[N],a02[N],a03[N],a04[N],a05[N],a06[N],a07[N],a08[N],a09[N];
  double a10[N],a11[N],a12[N],a13[N],a14[N],a15[N],a16[N],a17[N],a18[N],a19[N];
  double b00[N],b01[N],b02[N],b03[N],b04[N],b05[N],b06[N],b07[N],b08[N],b09[N];
  double b10[N],b11[N],b12[N],b13[N],b14[N],b15[N],b16[N],b17[N],b18[N],b19[N];
  int i;

  for (i=0; i<N; ++i) {
    a00[i] = 0.1;
    a01[i] = 0.1;
    a02[i] = 0.1;
    a03[i] = 0.1;
    a04[i] = 0.1;
    a05[i] = 0.1;
    a06[i] = 0.1;
    a07[i] = 0.1;
    a08[i] = 0.1;
    a09[i] = 0.1;
    a10[i] = 0.1;
    a11[i] = 0.1;
    a12[i] = 0.1;
    a13[i] = 0.1;
    a14[i] = 0.1;
    a15[i] = 0.1;
    a16[i] = 0.1;
    a17[i] = 0.1;
    a18[i] = 0.1;
    a19[i] = 0.1;
    b00[i] = 0.1;
    b01[i] = 0.1;
    b02[i] = 0.1;
    b03[i] = 0.1;
    b04[i] = 0.1;
    b05[i] = 0.1;
    b06[i] = 0.1;
    b07[i] = 0.1;
    b08[i] = 0.1;
    b09[i] = 0.1;
    b10[i] = 0.1;
    b11[i] = 0.1;
    b12[i] = 0.1;
    b13[i] = 0.1;
    b14[i] = 0.1;
    b15[i] = 0.1;
    b16[i] = 0.1;
    b17[i] = 0.1;
    b18[i] = 0.1;
    b19[i] = 0.1;
  }

  foo(a00,a01,a02,a03,a04,a05,a06,a07,a08,a09,
      a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,
      b00,b01,b02,b03,b04,b05,b06,b07,b08,b09,
      b10,b11,b12,b13,b14,b15,b16,b17,b18,b19);
  

  x=0.;
  for (i=0; i<N; ++i) {
    x=x+a00[i]+a01[i]+a02[i]+a03[i]+a04[i]+a05[i]+a06[i]+a07[i]+a08[i]+a09[i]+a10[i]+a11[i]+a12[i]+a13[i]+a14[i]+a15[i]+a16[i]+a17[i]+a18[i]+a19[i];
  }
      
  if (ABS(x-ans) <= absolute_error) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: abs(%lf - %lf) = %lf <= %lf\n", x, ans, ABS(x-ans), absolute_error);
  }
}
