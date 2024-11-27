
#include <stdio.h>

#if __EDG_VERSION__ > 243
int main() {
  printf("OK\n");
}

#else

#include <complex.h>

int n = 10;

void sub (double _Complex ans[], double _Complex aaa[]) {
  int i;
  for (i=0; i<n; ++i) {
    ans[i] = aaa[i] + 1.+1.I;
  }
}
int main() {
  int i;
  double _Complex aaa[10];
  double _Complex ans[10];

  for (i=0; i<n; ++i) {
    aaa[i] = i + i * I;
  }
  
  sub(ans, aaa);
  
  if (ans[3] == 4.+4.I) {
    printf("OK\n");
  } else {
    printf("NG\n");
    printf("%lf+%lfI\n",creal(ans[3]),cimag(ans[3]));
  }
}

#endif
