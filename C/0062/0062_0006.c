#include <stdio.h>
#define N 10
#define IANS 54

void foo(double a00[N],
	 double a01[N],
	 double a02[N],
	 double a03[N],
	 double a04[N],
	 double a05[N],
	 double a06[N],
	 double a07[N],
	 double a08[N],
	 double a09[N],
	 double a10[N],
	 double a11[N],
	 double a12[N],
	 double a13[N],
	 double a14[N],
	 double a15[N],
	 double a16[N],
	 double a17[N],
	 double a18[N],
	 double a19[N],
	 double a20[N],
	 double a21[N],
	 double a22[N],
	 double a23[N],
	 double a24[N],
	 double a25[N],
	 double a26[N],
	 double a27[N],
	 double a28[N],
	 double a29[N],
	 double a30[N],
	 double a31[N],
	 double a32[N],
	 double a33[N],
	 double a34[N],
	 double a35[N],
	 double a36[N],
	 double a37[N],
	 double a38[N],
	 double a39[N]) {
  int i;
  for (i=0; i<N; ++i) {
    a00[i] = a01[i]+a02[i]+a03[i]+a04[i]+a05[i]+a06[i]+a07[i]+a08[i]+a09[i];
    a10[i] = a11[i]+a12[i]+a13[i]+a14[i]+a15[i]+a16[i]+a17[i]+a18[i]+a19[i];
    a20[i] = a21[i]+a22[i]+a23[i]+a24[i]+a25[i]+a26[i]+a27[i]+a28[i]+a29[i];
    a30[i] = a31[i]+a32[i]+a33[i]+a34[i]+a35[i]+a36[i]+a37[i]+a38[i]+a39[i];
  }
}

void init_a(double a00[N],
	    double a01[N],
	    double a02[N],
	    double a03[N],
	    double a04[N],
	    double a05[N],
	    double a06[N],
	    double a07[N],
	    double a08[N],
	    double a09[N],
	    double r) {
  int i;

  for (i=0; i<N; ++i) {
    a00[i] = r;
    a01[i] = r;
    a02[i] = r;
    a03[i] = r;
    a04[i] = r;
    a05[i] = r;
    a06[i] = r;
    a07[i] = r;
    a08[i] = r;
    a09[i] = r;
  }
}

int main(void) {
  double a00[N];
  double a01[N];
  double a02[N];
  double a03[N];
  double a04[N];
  double a05[N];
  double a06[N];
  double a07[N];
  double a08[N];
  double a09[N];
  double a10[N];
  double a11[N];
  double a12[N];
  double a13[N];
  double a14[N];
  double a15[N];
  double a16[N];
  double a17[N];
  double a18[N];
  double a19[N];
  double a20[N];
  double a21[N];
  double a22[N];
  double a23[N];
  double a24[N];
  double a25[N];
  double a26[N];
  double a27[N];
  double a28[N];
  double a29[N];
  double a30[N];
  double a31[N];
  double a32[N];
  double a33[N];
  double a34[N];
  double a35[N];
  double a36[N];
  double a37[N];
  double a38[N];
  double a39[N];

  init_a(a00,a01,a02,a03,a04,a05,a06,a07,a08,a09,0.0);
  init_a(a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,1.0);
  init_a(a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,2.0);
  init_a(a30,a31,a32,a33,a34,a35,a36,a37,a38,a39,3.0);
  foo(a00,a01,a02,a03,a04,a05,a06,a07,a08,a09, \
      a10,a11,a12,a13,a14,a15,a16,a17,a18,a19, \
      a20,a21,a22,a23,a24,a25,a26,a27,a28,a29, \
      a30,a31,a32,a33,a34,a35,a36,a37,a38,a39);
  if ((int)(a00[N-1]+a10[N-1]+a20[N-1]+a30[N-1]) == IANS) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
  return 0;
}

