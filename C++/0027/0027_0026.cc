#include <cstdarg>
#include <cstdio>

template <class T> T loop_fusion_for_va(T *p, int n, ...) {
  T i1, i2;
  T tmp = 0, tmp2 = 0;

  va_list list;
  va_start(list, n);

  for (i1 = 0; i1 < n; ++i1) {
    tmp += p[i1];
    tmp += (T)va_arg(list, T);
  }
  for (i2 = 0; i2 < n; ++i2) {
    tmp2 += p[i2];
  }
  va_end(list);
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
  int res = 0;
  res = (int)loop_fusion_for_va(ca, (char)10, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
  res += (int)loop_fusion_for_va(sa, (short)10, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
  res += (int)loop_fusion_for_va(ia, (int)10, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
  res += (int)loop_fusion_for_va(lla, (long long)10, 1LL, 1LL, 1LL, 1LL, 1LL,
                                 1LL, 1LL, 1LL, 1LL, 1LL);
  res += (int)loop_fusion_for_va(uca, (unsigned char)10, 1, 1, 1, 1, 1, 1, 1, 1,
                                 1, 1);
  res += (int)loop_fusion_for_va(usa, (unsigned short)10, 1, 1, 1, 1, 1, 1, 1,
                                 1, 1, 1);
  res += (int)loop_fusion_for_va(ua, (unsigned int)10, 1U, 1U, 1U, 1U, 1U, 1U,
                                 1U, 1U, 1U, 1U);
  res += (int)loop_fusion_for_va(ulla, (unsigned long long)10, 1ULL, 1ULL, 1ULL,
                                 1ULL, 1ULL, 1ULL, 1ULL, 1ULL, 1ULL, 1ULL);
  if (res == 800) {
    puts("OK");
  } else {
    puts("NG");
  }
  return 0;
}
