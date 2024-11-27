#include <stdio.h>
double o1[128];
double o2[128];
double o3[128];
void foo(double * restrict s1,double * restrict s2,double * restrict s3,int n) {
  int i;
  double op1, op2, op3, res;
  for(i=0;i<128;++i) {
    op1 = s1[i];
    op2 = s2[i];
    op3 = s3[i];
    res = -op1 * op2 + op3;
    o1[i] = res;
    o2[i] = res + op3;
    o3[i] = res + op1;
  }
  if (o1[n] + o2[n] + o3[n] == -2284.000000) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
}

int main() {
  double s1[128];
  double s2[128];
  double s3[128];
  int i;
  for(i = 0; i < 128; ++i) {
    s1[i] = i;
    s2[i] = i+1;
    s3[i] = i+3;
  }
  foo(s1,s2,s3,i-100);
  return 0;
}
