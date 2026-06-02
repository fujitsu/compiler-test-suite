#include <stdio.h>
#include <math.h>


#define NI (64)
#define VAR_TYPE      int

#define _CNT_         (-10)
#define _UNROLL_       (2)

#define _TRUE_  1
#define _FALSE_ 0

#define DATA_TYPE int
#define EQUAL_CHECK(a, b) (a==b)
#define LOOP_KERNEL       (r[i][j] += (DATA_TYPE)(i / 10.2 / (1.1*_CNT_ / NI) + _CNT_*2.01) );



void sub_ocl(DATA_TYPE r[NI][NI], VAR_TYPE NVAR) {
  int i,j;
  for (j=0; j<NI; ++j) {
  for (i=0; i<NI; ++i) {
    LOOP_KERNEL
  }
  }
}

void sub(DATA_TYPE r[NI][NI], VAR_TYPE NVAR) {
  int i,j;
  for (j=0; j<NI; ++j) {
  for (i=0;i<NI;++i) {
    LOOP_KERNEL
  }
  }
}

void sub_init(DATA_TYPE r[NI][NI], int n) {
  int i,j;
  for (j=0; j<NI; ++j) {
  for (i=0;i<NI;++i) {
    r[i][j] = i + j;
  }
  }
}

void sub_cmp(DATA_TYPE p[NI][NI], DATA_TYPE q[NI][NI], int *is_ok) {
  int i,j;
  for (j=0; j<NI; ++j) {
  for (i=0; i<NI; ++i) {
    if (EQUAL_CHECK(p[i][j], q[i][j]) == _FALSE_) {
      printf("%d %d %ld %ld\n", i,j, p[i][j], q[i][j]);
      *is_ok = _FALSE_;
    }
  }
  }
}

int main(void) {
  DATA_TYPE r_ans[NI][NI], r[NI][NI];
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
