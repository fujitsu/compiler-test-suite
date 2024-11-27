#include <stdio.h>
#include <math.h>

#define NI (32)
#define NJ (32)
#define NK (32)
#define NII (10)
#define NJJ (12)
#define NKK (14)
#define _CLONE_   II==1,3
#define _CLONE2_  JJ==22,33
#define _CLONE3_  KK==10

#define _TRUE_ 1
#define _FALSE_ 0

#define EQUAL_CHECK(a, b) ((a==0.0 && b <= 1.0E-15) || (fabs(a - b)/fabs(a)) <= 1.0E-15)

void sub_abc(double r[NI][NJ][NK], double s[NI][NJ][NK], int II, int JJ, int KK) {
  int i,j,k;
  i = 0;
  do{
    for (j=0; j<JJ; ++j) {
      k = 0;
      while(k<KK) {
	r[i][j][k] = s[i][j][k] * i -j * k;
	++k;
      }
    }
    ++i;
  }while(i<II );
}

void sub(double r[NI][NJ][NK], double s[NI][NJ][NK], int II, int JJ, int KK) {
  int i,j,k;
  i = 0;
  do {
    for (j=0; j<JJ; ++j) {
      k=0;
      while(k<KK) {
	r[i][j][k] = s[i][j][k] * i -j * k;
	++k;
      }
    }
    ++i;
  }while(i<II);
}

void sub_init(double r[NI][NJ][NK], double s[NI][NJ][NK]) {
  int i,j,k;
  for (i=0; i<NI; ++i) {
    for (j=0; j<NJ; ++j) {
      for (k=0; k<NK; ++k) {
	r[i][j][k] =  i - j * k;
	s[i][j][k] =  i * j - k;
      }
    }
  }
}

int sub_cmp(double p[NI][NJ][NK], double q[NI][NJ][NK], int II, int JJ, int KK) {
  int i,j,k;
  for (i=0; i<II; ++i) {
    for (j=0; j<JJ; ++j) {
      for (k=0; k<KK; ++k) {
	if (!EQUAL_CHECK(p[i][j][k],q[i][j][k])) {
	  printf("%d %d %d %lf %lf\n",i,j,k,p[i][j][k],q[i][j][k]);
	  return _FALSE_;
	}
      }
    }
  }
  return _TRUE_;
}

int main(void) {
  int i,j,k;
  double r_ans[NI][NJ][NK],r[NI][NJ][NK],s[NI][NJ][NK];
  
  sub_init(r_ans,s);
  sub(r_ans,s,NII,NJJ,NKK);
  
  for (i=0; i<NII; ++i) {
    for (j=0; j<NJJ; ++j) {
      for (k=0; k<NKK; ++k) {
	sub_init(r,s);
	sub_abc(r,s,i,j,k);
	if (sub_cmp(r_ans,r,i,j,k) == _FALSE_) {
	  puts("NG abc");
	}
      }
    }
  }
  puts("OK");
}
