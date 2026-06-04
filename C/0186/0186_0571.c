#include <stdio.h>

int main() {
  float   aaa[100];
  float   bbb[100];
  double  ccc[100];
  float   xxx[100];
  float   yyy[100];
  double  zzz[100];
  long int i;

  for (i=0; i<100; i++) {
    aaa[i] = 0;
    bbb[i] = 2;
    ccc[i] = 3;
    xxx[i] = 0;
    yyy[i] = 2;
    zzz[i] = 3;
  }

  for (i=0; i<100; i+=2) {
    aaa[i] = bbb[i] + ccc[i];
    xxx[i] = yyy[i] + zzz[i];
  }

  for (i=0; i<100; i++) {
    if (aaa[i] != xxx[i]) {
      printf("NG\n");
    }
  }
  printf("OK\n");
  return 0;
}
