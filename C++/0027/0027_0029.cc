#include <cmath>
#include <cstdio>
#include <cstdlib>

template <class T> T loop_fusion_for_except(T *p, int n) {
  T i1, i2;
  int tmp = 0, tmp2 = 0;
  int *ip;

  try {
    for (i1 = 0; i1 < n; ++i1) {
      tmp += p[i1];
      if (n == 10) {
        ip = (int *)malloc(sizeof(int));
      }
    }
    for (i2 = 0; i2 < n; ++i2) {
      tmp2 += p[i2];
    }
  } catch (...) {
    *ip = 10;
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
  int res = 0;
  res = (int)loop_fusion_for_except(ca, (char)10);
  res += (int)loop_fusion_for_except(sa, (short)10);
  res += (int)loop_fusion_for_except(ia, (int)10);
  res += (int)loop_fusion_for_except(lla, (long long)10);
  res += (int)loop_fusion_for_except(uca, (unsigned char)10);
  res += (int)loop_fusion_for_except(usa, (unsigned short)10);
  res += (int)loop_fusion_for_except(ua, (unsigned int)10);
  res += (int)loop_fusion_for_except(ulla, (unsigned long long)10);
  if (res == 720) {
    puts("OK");
  } else {
    printf("NG : %d\n", res);
  }
  return 0;
}
