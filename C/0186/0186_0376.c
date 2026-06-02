#include <stdio.h>
#include <math.h>


#define NI (64)
#define VAR_TYPE      int

#define _CNT_         (323532352344)
#define _UNROLL_       (2)

#define LOOP_KERNEL       (r[i][j] += i*i / 100.2 / (1.1*_CNT_ / NI) + _CNT_*2.01 + i );
#define EQUAL_CHECK(a, b) ((a==0.0 && (b < 1.0E-13)) || ((fabs(a - b)/fabs(a)) < 1.0E-13))

#define _TRUE_  1
#define _FALSE_ 0

void sub_ocl(double r[NI][NI], VAR_TYPE NVAR) {
  int i,j;
  for (j=0; j<NI; ++j) {
  for (i=0; i<NI; ++i) {
    LOOP_KERNEL
  }
  }
}

void sub(double r[NI][NI], VAR_TYPE NVAR) {
  int i,j;
  for (j=0; j<NI; ++j) {
  for (i=0;i<NI;++i) {
    LOOP_KERNEL
  }
  }
}

void sub_init(double r[NI][NI], int n) {
  int i,j;
  for (j=0; j<NI; ++j) {
  for (i=0;i<NI;++i) {
    r[i][j] = ((float)i)/(NI + _CNT_ * 1.1) * (_CNT_/NI*1.0+ n);
  }
  }
}

void sub_cmp(double p[NI][NI], double q[NI][NI], int *is_ok) {
  int i,j;
  for (j=0; j<NI; ++j) {
  for (i=0; i<NI; ++i) {
    if (EQUAL_CHECK(p[i][j], q[i][j]) == _FALSE_) {
      printf("%d %d %f %f\n", i,j, p[i][j], q[i][j]);
      *is_ok = _FALSE_;
    }
  }
  }
}

int main(void) {
  double r_ans[NI][NI], r[NI][NI];
  int is_ok;
  long long int i,NVAR;
  is_ok = _TRUE_;
  
  for (i=0;i<NI;++i) {
    sub_init(r_ans,i);
    sub_init(r,i);
    NVAR = _CNT_ - NI/2 + i +1;
    sub(r_ans, NVAR);
    sub_ocl(r, NVAR);
    sub_cmp(r_ans, r, &is_ok);
    if (is_ok == _FALSE_) {
      printf("NG\n");
    }
  }
  printf("OK\n");
  return 0;
}
