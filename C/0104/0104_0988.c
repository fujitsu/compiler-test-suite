#include <stdio.h>
#include <math.h>

void fullunroll1(double * restrict a, double * restrict b) {
  int i;
  for (i=0; i<4; ++i) {
    a[i] = a[i] + b[i];
  }
}

void fullunroll2(double * restrict a, double * restrict b) {
  unsigned int i;
  for (i=0; i<4; ++i) {
    a[i] = a[i] + b[i];
  }
}

void fullunroll3(double * restrict a, double * restrict b) {
  long long int i;
  for (i=0; i<4; ++i) {
    a[i] = a[i] + b[i];
  }
}

void fullunroll4(double * restrict a, double * restrict b) {
  int i;
  for (i=0; i<4LL; ++i) {
    a[i] = a[i] + b[i];
  }
}

void fullunroll5(double * restrict a, double * restrict b) {
  unsigned int i;
  for (i=0; i<4ULL; ++i) {
    a[i] = a[i] + b[i];
  }
}

void fullunroll6(double * restrict a, double * restrict b) {
  int i;
  for (i=0; 4>i; ++i) {
    a[i] = a[i] + b[i];
  }
}

void fullunroll7(double * restrict a, double * restrict b) {
  unsigned int i;
  for (i=0; 4>i; ++i) {
    a[i] = a[i] + b[i];
  }
}

void fullunroll8(double * restrict a, double * restrict b) {
  long long int i;
  for (i=0; 4>i; ++i) {
    a[i] = a[i] + b[i];
  }
}

void fullunroll9(double * restrict a, double * restrict b) {
  int i;
  for (i=0; 4LL>i; ++i) {
    a[i] = a[i] + b[i];
  }
}

void fullunroll10(double * restrict a, double * restrict b) {
  unsigned int i;
  for (i=0; 4ULL>i; ++i) {
    a[i] = a[i] + b[i];
  }
}

void fullunroll11(double * restrict a, double * restrict b) {
  int i;
  for (i=0; i<=4; ++i) {
    a[i] = a[i] + b[i];
  }
}

void fullunroll12(double * restrict a, double * restrict b) {
  unsigned int i;
  for (i=0; i<=4; ++i) {
    a[i] = a[i] + b[i];
  }
}

void fullunroll13(double * restrict a, double * restrict b) {
  long long int i;
  for (i=0; i<=4; ++i) {
    a[i] = a[i] + b[i];
  }
}

void fullunroll14(double * restrict a, double * restrict b) {
  int i;
  for (i=0; i<=4LL; ++i) {
    a[i] = a[i] + b[i];
  }
}

void fullunroll15(double * restrict a, double * restrict b) {
  unsigned int i;
  for (i=0; i<=4ULL; ++i) {
    a[i] = a[i] + b[i];
  }
}

#define N 10

void init(double *x, double value) {
  int i;
  for (i=0; i<N; ++i) {
    x[i] = value;
  }
}

double sum(double *x) {
  int i;
  double r = 0.0;
  for (i=0; i<N; ++i) {
    r += x[i];
  }
  return r;
}

#define ANS  (double)75.0
#define DIFF (double)0.0000001

int main(void) {
  double a[N],b[N],result;
  init(a,(double)1.0);
  init(b,(double)1.0);
  fullunroll1(a,b);
  fullunroll2(a,b);
  fullunroll3(a,b);
  fullunroll4(a,b);
  fullunroll5(a,b);
  fullunroll6(a,b);
  fullunroll7(a,b);
  fullunroll8(a,b);
  fullunroll9(a,b);
  fullunroll10(a,b);
  fullunroll11(a,b);
  fullunroll12(a,b);
  fullunroll13(a,b);
  fullunroll14(a,b);
  fullunroll15(a,b);
  result = sum(a);
  if (fabs(result - ANS) <= DIFF) {
    printf("ok\n");
  } else {
    printf("ng: result=%lf, ANS=%lf\n", result, ANS);
  }
  return 0;
}
