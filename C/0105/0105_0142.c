#include <stdio.h>
#include <math.h>

#define NI (48)
#define NK (32)
#define NII (42)
#define NKK (25)
#define _CLONE_   II==-1:0

#define _CLONE3_  SS==-1:0,5:6

#define _TRUE_ 1
#define _FALSE_ 0

#define EQUAL_CHECK(a, b) ((a==0.0 && b <= 1.0E-15) || (fabs(a - b)/fabs(a)) <= 1.0E-15)

void sub_abc(double r[NI][NK], double s[NI][NK], int II,  int KK) {
  int i,k;
  for (i=0; i<II; ++i) {
    for (k=0; k<KK; ++k) {
      r[i][k] = s[i][k] * i * k;
      if (k%2 == 0) {
	s[i][k] = s[i][k] - k  -i;
      }
    }
  }
}

void sub(double r[NI][NK], double s[NI][NK], int II,  int KK) {
  int i,k;
  for (i=0; i<II; ++i) {
    for (k=0; k<KK; ++k) {
      r[i][k] = s[i][k] * i * k;
      if (k%2 == 0) {
	s[i][k] = s[i][k] - k  -i;
      }
    }
  }
}

void sub_init(double r[NI][NK], double s[NI][NK]) {
  int i,k;
  for (i=0; i<NI; ++i) {
    for (k=0; k<NK; ++k) {
      r[i][k] =  i * k;
      s[i][k] =  i - k;
    }
  }
}

int sub_cmp(double p[NI][NK], double q[NI][NK], int II,  int KK) {
  int i,k;
  for (i=0; i<II; ++i) {
    for (k=0; k<KK; ++k) {
      if (!EQUAL_CHECK(p[i][k],q[i][k])) {
	return _FALSE_;
      }
    }
  }
  return _TRUE_;
}

int main(void) {
  int i,k;
  double r_ans[NI][NK],r[NI][NK],s[NI][NK];
  
  sub_init(r_ans,s);
  sub(r_ans,s,NII,NKK);
  
  for (i=0; i<NII; ++i) {
    for (k=0; k<NKK; ++k) {
      sub_init(r,s);
      sub_abc(r,s,i,k);
      if (sub_cmp(r_ans,r,i,k) == _FALSE_) {
	puts("NG abc");
      }
    }
  }
  puts("OK");
}

