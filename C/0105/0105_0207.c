#include <stdio.h>
#include <math.h>


#define NI (128)
#define VAR_TYPE      int

#define _CNT_         -12800000000
#define _CLONE_       NVAR==_CNT_

#define LOOP_KERNEL       (r[i] += i / 0.2 / (1.1*_CNT_ /  NI) + _CNT_*2.0 );

#define EQUAL_CHECK(a, b) ((a==0.0 && (b < 1.0E-15)) || ((fabs(a - b)/fabs(a)) < 1.0E-15))
#define _TRUE_  1
#define _FALSE_ 0

void sub_abc(double *r, VAR_TYPE NVAR) {
  int i;
  for (i=0; i<NI; ++i) {
    LOOP_KERNEL
  }
}

void sub(double *r, VAR_TYPE NVAR) {
  int i;
  for (i=0;i<NI;++i) {
    LOOP_KERNEL
  }
}

void sub_init(double *r, int n) {
  int i;
  for (i=0;i<NI;++i) {
    r[i] = ((float)i)/(NI - _CNT_ / 1.1) * (_CNT_/NI*2.0+ n);
  }
}

void sub_cmp(double *p, double* q, int *is_ok) {
  int i;
  for (i=0; i<NI; ++i) {
    if (EQUAL_CHECK(p[i], q[i]) == _FALSE_) {
      printf("%d %f %f\n", i, p[i], q[i]);
      *is_ok = _FALSE_;
    }
  }
}

int main(void) {
  double r_ans[NI], r[NI];
  int is_ok;
  long long int i,NVAR;
  is_ok = _TRUE_;
  
  for (i=0;i<NI;++i) {
    sub_init(r_ans,i);
    sub_init(r,i);
    NVAR = _CNT_ - NI/2 + i +1;
    sub(r_ans, NVAR);
    sub_abc(r, NVAR);
    sub_cmp(r_ans, r, &is_ok);
    if (is_ok == _FALSE_) {
      printf("NG\n");
    }
  }
  printf("OK\n");
  return 0;
}
