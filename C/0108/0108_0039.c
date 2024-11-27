#include <stdio.h>
#define N  1024
double a01[N], a02[N], a03[N], a04[N], a05[N], a06[N], a07[N], a08[N], a09[N], a10[N],
       a11[N], a12[N], a13[N], a14[N], a15[N], a16[N], a17[N], a18[N], a19[N], a20[N],
       a21[N], a22[N], a23[N], a24[N], a25[N], a26[N], a27[N], a28[N], a29[N], a30[N],
       a31[N], a32[N], a33[N], a34[N], a35[N], a36[N];
void sub(double *a) {
  int i;
  for(i=0;i<8;++i) {
    a[i] = a[i]*a[i] + a[i];
  }
}

void caller(void) {
  int i;
#pragma clang loop unroll(enable)
  for(i=0;i<2;++i) {
    sub(a01);
    sub(a02);
    sub(a03);
    sub(a04);
    sub(a05);
    sub(a06);
    sub(a07);
    sub(a08);
    sub(a09);
    sub(a10);
    sub(a11);
    sub(a12);
    sub(a13);
    sub(a14);
    sub(a15);
    sub(a16);
    sub(a17);
    sub(a18);
  }
  sub(a19);
  sub(a20);
  sub(a21);
  sub(a22);
  sub(a23);
  sub(a24);
  sub(a25);
  sub(a26);
  sub(a27);
  sub(a28);
  sub(a29);
  sub(a30);
  sub(a31);
  sub(a32);
  sub(a33);
  sub(a34);
  sub(a35);
  sub(a36);
}

void caller2(void) {
  int i;
  for(i=0;i<N;++i) {
    caller();
  }
}

int main(void) {
  puts("OK");
  return 0;
}
