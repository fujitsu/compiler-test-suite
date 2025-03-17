#include <stdio.h>

int loop_fusion_counter_r4(int n, int *p) {
  float i;
  int tmp = 0, tmp2 = 0;

  for (i = 0; i < (float)n; i += 1.0F) {
    tmp += p[(int)i];
  }
  for (i = 0; i < (float)n; i++) {
    tmp2 += p[(int)i];
  }
  return tmp + tmp2;
}

int loop_fusion_counter_r8(int n, int *p) {
  double i;
  int tmp = 0, tmp2 = 0;

  for (i = 0; i < (double)n; i += 1.0) {
    tmp += p[(int)i];
  }
  for (i = 0; i < (double)n; ++i) {
    tmp2 += p[(int)i];
  }
  return tmp + tmp2;
}

int loop_fusion_counter_r16(int n, int *p) {
  long double i;
  int tmp = 0, tmp2 = 0;

  for (i = 0; i < (long double)n; i += 1.0L) {
    tmp += p[(int)i];
  }
  for (i = 0; i < (long double)n; ++i) {
    tmp2 += p[(int)i];
  }
  return tmp + tmp2;
}

int main() {
  int ia[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  int res;
  res = loop_fusion_counter_r4(10, ia);
  res += loop_fusion_counter_r8(10, ia);
  res += loop_fusion_counter_r16(10, ia);
  if (res == 270) {
    puts("OK");
  } else {
    puts("NG");
  }
  return 0;
}
