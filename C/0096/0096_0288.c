
#include <stdio.h>
#include <math.h>
#include <sys/time.h>

int n = 10;
int main() {
  int i;
  double aaa[10], ans[10], tmp;
  
  for (i=0; i<n; ++i) {
    aaa[i] = i + n;
  }

  tmp = sin(aaa[5]);
  ans[5] = tmp * 100000;

  if (ans[5] > 65028.78401 && ans[5] < 65028.78402) {
    printf("OK\n");
  } else {
    printf("NG\n");
    printf("%lf\n",ans[5]);
  }
}
