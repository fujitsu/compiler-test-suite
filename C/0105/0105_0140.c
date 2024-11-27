#include <stdio.h>
#include <math.h>

#define NI (32)
#define NII (10)
#define _CLONE_   II==1,3

#define _TRUE_ 1
#define _FALSE_ 0

#define EQUAL_CHECK(a, b) ((a==0.0 && b <= 1.0E-15) || (fabs(a - b)/fabs(a)) <= 1.0E-15)

void sub_abc(double r[NI], double s[NI], int II) {
  int i;
  i = 0;
  do{
    r[i] = s[i] * i;
    ++i;
  }while(i<II );
}

void sub(double r[NI], double s[NI], int II) {
  int i;
  i = 0;
  do {
    r[i] = s[i] * i ;
    ++i;
  }while(i<II);
}

void sub_init(double r[NI], double s[NI]) {
  int i;
  for (i=0; i<NI; ++i) {
    r[i] =  i;
    s[i] =  i+1;
  }
}

int sub_cmp(double p[NI], double q[NI], int II) {
  int i;
  for (i=0; i<II; ++i) {
    if (!EQUAL_CHECK(p[i],q[i])) {
      printf("%d%lf %lf\n",i,p[i],q[i]);
      return _FALSE_;
    }
  }
  return _TRUE_;
}

int main(void) {
  int i;
  double r_ans[NI],r[NI],s[NI];
  
  sub_init(r_ans,s);
  sub(r_ans,s,NII);
  
  for (i=0; i<NII; ++i) {
    sub_init(r,s);
    sub_abc(r,s,i);
    if (sub_cmp(r_ans,r,i) == _FALSE_) {
      puts("NG abc");
    }
  }
  puts("OK");
}
