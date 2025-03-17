#include <stdio.h>

int loop_fusion_counter_u1(int n, int *p) {
  unsigned char i;
  int tmp = 0, tmp2 = 0;

  for (i = 0; i < n; i++) {
    tmp += p[i];
  }
  for (i = 0; i < n; ++i) {
    tmp2 += p[i];
  }
  return tmp + tmp2;
}

int loop_fusion_counter_u2(int n, int *p) {
  unsigned short i;
  int tmp = 0, tmp2 = 0;

  for (i = 0; i < n; i++) {
    tmp += p[i];
  }
  for (i = 0; i < n; ++i) {
    tmp2 += p[i];
  }
  return tmp + tmp2;
}

int loop_fusion_counter_u4(int n, int *p) {
  unsigned int i;
  int tmp = 0, tmp2 = 0;

  for (i = 0; i < n; i++) {
    tmp += p[i];
  }
  for (i = 0; i < n; ++i) {
    tmp2 += p[i];
  }
  return tmp + tmp2;
}

int loop_fusion_counter_u8(int n, int *p) {
  unsigned long long i;
  int tmp = 0, tmp2 = 0;

  for (i = 0; i < n; i++) {
    tmp += p[i];
  }
  for (i = 0; i < n; ++i) {
    tmp2 += p[i];
  }
  return tmp + tmp2;
}

int loop_fusion_counter_i1(int n, int *p) {
  char i;
  int tmp = 0, tmp2 = 0;

  for (i = 0; i < n; i++) {
    tmp += p[i];
  }
  for (i = 0; i < n; ++i) {
    tmp2 += p[i];
  }
  return tmp + tmp2;
}

int loop_fusion_counter_i2(int n, int *p) {
  short int i;
  int tmp = 0, tmp2 = 0;

  for (i = 0; i < n; i++) {
    tmp += p[i];
  }
  for (i = 0; i < n; ++i) {
    tmp2 += p[i];
  }
  return tmp + tmp2;
}

int loop_fusion_counter_i4(int n, int *p) {
  int i;
  int tmp = 0, tmp2 = 0;

  for (i = 0; i < n; i++) {
    tmp += p[i];
  }
  for (i = 0; i < n; ++i) {
    tmp2 += p[i];
  }
  return tmp + tmp2;
}

int loop_fusion_counter_i8(int n, int *p) {
  long long int i;
  int tmp = 0, tmp2 = 0;

  for (i = 0; i < n; i++) {
    tmp += p[i];
  }
  for (i = 0; i < n; ++i) {
    tmp2 += p[i];
  }
  return tmp + tmp2;
}

int main() {
  int ia[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  int res;
  res = loop_fusion_counter_i1(10, ia);
  res += loop_fusion_counter_i2(10, ia);
  res += loop_fusion_counter_i4(10, ia);
  res += loop_fusion_counter_i8(10, ia);
  res += loop_fusion_counter_u1(10, ia);
  res += loop_fusion_counter_u2(10, ia);
  res += loop_fusion_counter_u4(10, ia);
  res += loop_fusion_counter_u8(10, ia);
  if (res == 720) {
    puts("OK");
  } else {
    puts("NG");
  }
  return 0;
}
