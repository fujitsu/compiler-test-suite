#include <stdio.h>

int n = 10;

double * sub (double aaa[], double bbb[]) {
  int i;
  double ans[10];

  for (i=0; i<n; ++i) {
    ans[i] = aaa[i] + bbb[i];
  }
  return ans;
}
int main() {
  int i;
  double aaa[10], bbb[10], *ans;
  
  for (i=0; i<n; ++i) {
    aaa[i] = i + 1;
    bbb[i] = i * i;
  }
  
  ans = sub(aaa, bbb);

  if (ans[5] == 31) {
    printf("OK\n");
  } else {
    printf("NG\n");
    printf("%f\n",ans[5]);
  }
}
