#include <stdio.h>
#include <math.h>

#define NK (32)
#define NKK (32)
#define _CLONE_   KK==100

#define _TRUE_ 1
#define _FALSE_ 0

#define EQUAL_CHECK(a, b) ((a==0.0 && b <= 1.0E-15) || (fabs(a - b)/fabs(a)) <= 1.0E-15)

double r[NK];
double s[NK];
double r_ans[NK];
double mask[NK];

void sub_abc(int KK) {
  int k;

  for (k=0; k<KK; ++k) {
    if (mask[k]==0.0) {
      r[k] = log(s[k]);
    }
  }
}

void sub(int KK) {
  int k;

  for (k=0; k<KK; ++k) {
    if (mask[k]==0.0) {
      r_ans[k] = log(s[k]);
    }
  }
}

void sub_init() {
  int k;
  for (k=0; k<NK; ++k) {
    r_ans[k] = r[k] =  k;
    s[k] =  k + 1;
    mask[k] = (k%2==1)?1.0:0.0;
  }
}

int sub_cmp(double p[NK], double q[NK], int KK) {
  int k;
  for (k=0; k<KK; ++k) {
    if (!EQUAL_CHECK(p[k],q[k])) {
      printf("%d %lf %lf\n", k,p[k],q[k]);
      return _FALSE_;
    }
  }
  return _TRUE_;
}

int main(void) {
  int k;
  sub_init();
  
  for (k=0; k<NKK; ++k) {
    sub_init();
    sub(k);
    sub_abc(k);

    if (sub_cmp(r_ans,r,k) == _FALSE_) {
      puts("NG abc");
    }
  }
  puts("OK");
}

