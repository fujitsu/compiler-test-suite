#include <stdio.h>
#include <stdbool.h>
#include <math.h>

#define N 1024
#define EQUAL_CHECK(a, b) ((a==0.0 && b <= 1.0E-15) || (fabs(a - b)/fabs(a)) <= 1.0E-15)

void sub_fission(double *restrict a, double *restrict b, 
		 double *restrict c, double *restrict d) {
  int i;
  for (i=0;i<N;++i) {
    a[i] = a[i] + b[i];
    c[i] = c[i] + d[i];
  }
}

void sub_ans(double *restrict a, double *restrict b, 
	     double *restrict c, double *restrict d) {
  int i;
  for (i=0;i<N;++i) {
    a[i] = a[i] + b[i];
    c[i] = c[i] + d[i];
  }
}
void sub_init(double *restrict a, double *restrict b, 
	      double *restrict c, double *restrict d) {
  int i;
  for (i=0;i<N;++i) {
    a[i] = i;
    b[i] = i*i * 0.5;
    c[i] = (i+1) * 0.323412;
    d[i] = sin(i*1.0);
  }
}

void check_res(double *restrict a, double *restrict b, 
	       double *restrict c, double *restrict d, 
	       double *restrict ans_a, double *restrict ans_b, 
	       double *restrict ans_c, double *restrict ans_d) {
  int i;
  bool is_ok = true;
  for (i=0;i<N;++i) {
    if ( !( EQUAL_CHECK(a[i], ans_a[i]) && 
	    EQUAL_CHECK(b[i], ans_b[i]) && 
	    EQUAL_CHECK(c[i], ans_c[i]) && 
	    EQUAL_CHECK(d[i], ans_d[i]) ) ) {
      is_ok = false;
      break;
    }
  }
  if (is_ok == true) {
    puts("OK");
  } else {
    puts("NG");
  }
  
}

int main(void) {
  double a[N], b[N], c[N], d[N];
  double ans_a[N], ans_b[N], ans_c[N], ans_d[N];

  sub_init(a, b, c, d);
  sub_init(ans_a, ans_b, ans_c, ans_d);

  sub_fission(a, b, c, d);
  sub_ans(ans_a, ans_b, ans_c, ans_d);

  check_res(a, b, c, d, ans_a, ans_b, ans_c, ans_d);
}
