#include <stdio.h>
#include <math.h>

#define NI (32)
#define NK (32)
#define NII (24)
#define NKK (32)
#define _CLONE2_  KK==2,3

#define _TRUE_ 1
#define _FALSE_ 0

#define EQUAL_CHECK(a, b) ((a==0.0 && b <= 1.0E-15) || (fabs(a - b)/fabs(a)) <= 1.0E-15)

double r[NI][NK];
double r_ans[NI][NK];
double s[NI][NK];

void sub_abc(int II,  int KK) {
  int i,k;
  for (k=0; k<KK; ++k) {
    for (i=0; i<II; ++i) {
      r[i][k] = r[i][k] * i * k;
      s[i][k] = s[i][k] - k - i;
    }
  }
}

void sub(int II,  int KK) {
  int i,k;
  for (i=0; i<II; ++i) {
    for (k=0; k<KK; ++k) {
      r_ans[i][k] = r_ans[i][k] * i * k;
      s[i][k] = s[i][k] - k - i;
    }
  }
}

void sub_init() {
  int i,k;
  for (i=0; i<NI; ++i) {
    for (k=0; k<NK; ++k) {
      r[i][k] =  i * k;
      s[i][k] =  i - k;
    }
  }
}
void sub_ansinit() {
  int i,k;
  for (i=0; i<NI; ++i) {
    for (k=0; k<NK; ++k) {
      r_ans[i][k] =  i * k;
    }
  }
}

int sub_cmp(double p[NI][NK], double q[NI][NK],  int II,  int KK) {
  int i,k;
  for (i=0; i<II; ++i) {
    for (k=0; k<KK; ++k) {
      if (!EQUAL_CHECK(p[i][k],q[i][k])) {
	printf("%d %d %lf %lf\n", i,k,p[i][k],q[i][k]);
	return _FALSE_;
      }
    }
  }
  return _TRUE_;
}

int main(void) {
  int i,k;

  sub_ansinit();
  sub(NII,NKK);
  
  for (i=0; i<NII; ++i) {
    for (k=0; k<NKK; ++k) {
      sub_init();
      sub_abc(i,k);
      if (sub_cmp(r_ans,r,i,k) == _FALSE_) {
	puts("NG");
      }
    }
  }
  puts("OK");
}

