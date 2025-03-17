#include <cstdio>

int loop_fusion_for_dec(int *p, int n) {
  int i1, tmp = 0, tmp2 = 0;
  for (i1 = n; i1 > 0; --i1) {
    tmp += p[i1 - 1];
  }
  for (i1 = n; i1 > 0; --i1) {
    tmp2 += p[i1 - 1];
  }
  return tmp + tmp2;
}

template <class T> T loop_fusion_for_dec(T *p, T n) {
  T i1, i2, tmp = 0, tmp2 = 0;
  for (i1 = n; i1 > 0; --i1) {
    tmp += p[i1 - 1];
  }
  for (i2 = n; i2 > 0; --i2) {
    tmp2 += p[i2 - 1];
  }
  return tmp + tmp2;
}

template <class T> T loop_fusion_for_dec_with_conv(T *p, T n) {
  T i1, i2, tmp = 0, tmp2 = 0;
  for (i1 = (T)n; i1 > (T)0; --i1) {
    tmp += p[i1 - (T)1];
  }
  for (i2 = (T)n; i2 > (T)0; --i2) {
    tmp2 += p[i2 - (T)1];
  }
  return tmp + tmp2;
}

int main() {
  char ca[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  short sa[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  int ia[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  long long lla[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  unsigned char uca[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  unsigned short usa[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  unsigned ua[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  unsigned long long ulla[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  int res;
  res = loop_fusion_for_dec(ia, 10);
  res += loop_fusion_for_dec_with_conv(ia, 10);
  res += loop_fusion_for_dec(ca, (char)10);
  res += loop_fusion_for_dec_with_conv(ca, (char)10);
  res += loop_fusion_for_dec(sa, (short)10);
  res += loop_fusion_for_dec_with_conv(sa, (short)10);
  res += loop_fusion_for_dec(lla, (long long)10);
  res += loop_fusion_for_dec_with_conv(lla, (long long)10);
  res += loop_fusion_for_dec(ua, (unsigned)10);
  res += loop_fusion_for_dec_with_conv(ua, (unsigned)10);
  res += loop_fusion_for_dec(uca, (unsigned char)10);
  res += loop_fusion_for_dec_with_conv(uca, (unsigned char)10);
  res += loop_fusion_for_dec(usa, (unsigned short)10);
  res += loop_fusion_for_dec_with_conv(usa, (unsigned short)10);
  res += loop_fusion_for_dec(ulla, (unsigned long long)10);
  res += loop_fusion_for_dec_with_conv(ulla, (unsigned long long)10);
  if (res == 1440) {
    puts("OK");
  } else {
    puts("NG");
  }
  return 0;
}
