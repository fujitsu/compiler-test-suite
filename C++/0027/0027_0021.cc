#include <cstdio>

int loop_fusion_while(int *p, int n) {
  int i1, tmp = 0, tmp2 = 0;
  i1 = 0;
  while (i1 < n) {
    tmp += p[i1];
    i1++;
  }
  i1 = 0;
  while (i1 < n) {
    tmp2 += p[i1];
    i1++;
  }
  return tmp + tmp2;
}

template <class T> T loop_fusion_while(T *p, T n) {
  T i1, i2, tmp = 0, tmp2 = 0;
  i1 = 0;
  while (i1 < n) {
    tmp += p[i1];
    i1++;
  }
  i2 = 0;
  while (i2 < n) {
    tmp2 += p[i2];
    i2++;
  }
  return tmp + tmp2;
}

template <class T> T loop_fusion_while_with_conv(T *p, T n) {
  T i1, i2, tmp = 0, tmp2 = 0;
  i1 = (T)0;
  while (i1 < (T)n) {
    tmp += p[i1];
    i1++;
  }
  i2 = (T)0;
  while (i2 < (T)n) {
    tmp2 += p[i2];
    i2++;
  }
  return tmp + tmp2;
}

int main() {
  int ia[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  unsigned ua[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  int res;
  res = loop_fusion_while(ia, 10);
  res += loop_fusion_while_with_conv(ia, 10);
  res += loop_fusion_while(ua, (unsigned)10);
  res += loop_fusion_while_with_conv(ua, (unsigned)10);
  if (res == 360) {
    puts("OK");
  } else {
    puts("NG");
  }
  return 0;
}
