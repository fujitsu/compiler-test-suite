#include <cstdio>

template <class T> T loop_fusion_for_dec(T *p, T n) {
  T i1, i2, tmp = 0, tmp2 = 0;
  for (i1 = n; i1 > 0; --i1) {
    tmp += p[(int)(i1 - 1)];
  }
  for (i2 = n; i2 > 0; --i2) {
    tmp2 += p[(int)(i2 - 1)];
  }
  return tmp + tmp2;
}

template <class T> T loop_fusion_for_dec_with_conv(T *p, T n) {
  T i1, i2, tmp = 0, tmp2 = 0;
  for (i1 = (T)n; i1 > (T)0; --i1) {
    tmp += p[(int)(i1 - (T)1)];
  }
  for (i2 = (T)n; i2 > (T)0; --i2) {
    tmp2 += p[(int)(i2 - (T)1)];
  }
  return tmp + tmp2;
}

int main() {
  float fa[] = {0.0F, 1.0F, 2.0F, 3.0F, 4.0F, 5.0F,
                6.0F, 7.0F, 8.0F, 9.0F, 10.0F};
  double da[] = {0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0};
  long double lda[] = {0.0L, 1.0L, 2.0L, 3.0L, 4.0L, 5.0L,
                       6.0L, 7.0L, 8.0L, 9.0L, 10.0L};
  int res;
  res = (int)loop_fusion_for_dec(fa, 10.0F);
  res += (int)loop_fusion_for_dec_with_conv(fa, 10.0F);
  res += (int)loop_fusion_for_dec(da, 10.0);
  res += (int)loop_fusion_for_dec_with_conv(da, 10.0);
  res += (int)loop_fusion_for_dec(lda, 10.0L);
  res += (int)loop_fusion_for_dec_with_conv(lda, 10.0L);
  if (res == 540) {
    puts("OK");
  } else {
    puts("NG");
  }
  return 0;
}
