#include <stdio.h>
#include <math.h>

#define NI (256)

#define I8_MAX        9223372036854775807
#define I8_MAX_PLUS   9223372036854775808
#define I8_MAX_MINUS  9223372036854775806
#define I8_MIN       -9223372036854775808
#define I8_MIN_PLUS  -9223372036854775807
#define I8_MIN_MINUS -9223372036854775809

#define _CLONE_   NVAR==I8_MIN_MINUS

#define EQUAL_CHECK(a, b) ((a==0.0 && (b < 1.0E-15)) || ((fabs(a - b)/fabs(a)) < 1.0E-15))
#define _TRUE_ 1
#define _FALSE_ 0

void sub_abc(double *r, long long int NVAR) {
  int i;
  for (i=0;i<NI;++i) {
    r[i] = r[i] + i * 0.1/NVAR;
  }
}

void sub(double *r, long long int NVAR) {
  int i;
  for (i=0;i<NI;++i) {
    r[i] = r[i] + i * 0.1/NVAR;
  }
}

void sub_init(double *r) {
  int i;
  for (i=0;i<NI;++i) {
    r[i] = (double)i / (NI + 256);
  }
}

void sub_cmp(double *p, double *q, int *is_ok) {
  int i;

  for (i=0;i<NI;++i) {
    if (EQUAL_CHECK(p[i], q[i]) == _FALSE_) {
      printf("%d %f %f\n", i ,p[i], q[i]);
      *is_ok = _FALSE_;
    }
  }
}

int main(void) {
  double r_ans[NI], r[NI];
  int is_ok = _TRUE_;

  sub_init(r_ans);
  sub_init(r);
  sub(r_ans,I8_MAX);
  sub_abc(r,I8_MAX);
  sub_cmp(r_ans,r,&is_ok);

  sub_init(r_ans);
  sub_init(r);
  sub(r_ans,I8_MAX_MINUS);
  sub_abc(r,I8_MAX_MINUS);
  sub_cmp(r_ans,r,&is_ok);

  sub_init(r_ans);
  sub_init(r);
  sub(r_ans,I8_MIN);
  sub_abc(r,I8_MIN);
  sub_cmp(r_ans,r,&is_ok);

  sub_init(r_ans);
  sub_init(r);
  sub(r_ans,I8_MIN_PLUS);
  sub_abc(r,I8_MIN_PLUS);
  sub_cmp(r_ans,r,&is_ok);
  
  if (is_ok == _FALSE_) {
    puts("NG");
  } else {
    puts("OK");
  }
  return 0;
}
