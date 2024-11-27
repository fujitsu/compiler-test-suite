#include <stdio.h>

int n = 10;

double sub (double aaa, double bbb) {
  return aaa + bbb;
}
int main() {
  int i;
  double aaa[10], bbb[10], ans[10];
  
  for (i=0; i<n; ++i) {
    aaa[i] = i + 1;
    bbb[i] = i * i;
  }
  for (i=0; i<10; ++i) {
    ans[i] = sub(aaa[i], bbb[i]);
  }

  if (ans[5] == 31) {
    printf("OK\n");
  } else {
    printf("NG\n");
    printf("%f\n",ans[5]);
  }
}
