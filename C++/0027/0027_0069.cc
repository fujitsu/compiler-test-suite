#include <iostream>
#include <stdio.h>

template <class test_t> struct TC {
  test_t selstore_test(const test_t *input, const test_t *input2,
                       const int *mask, const test_t *res, int n);
  test_t selstore_test_dis(const test_t *input, const test_t *input2,
                           const int *mask, const test_t *res, int n);
  test_t selstore_test_vts(const test_t *input, const test_t *input2,
                           const int *mask, const test_t res, int n);
  test_t selstore_test_vsum(const test_t *input, const test_t *input2,
                            const int *mask, const test_t res, int n);
};

template <class test_t>
test_t TC<test_t>::selstore_test(const test_t *input, const test_t *input2,
                                 const int *mask, const test_t *res, int n) {
  test_t *tmp;
  tmp = new test_t[n];

  for (int i = 0; i < n; i++) {
    if (mask[i] > 0) {
      tmp[i] = input[i] + input2[i];
    } else {
      tmp[i] = input[i] - input2[i];
    }
  }

#pragma clang loop vectorize(disable)
  for (int i = 0; i < n; i++) {
    if (abs(abs(tmp[i]) - abs(res[i])) > 0.000002) {
      for (int j = 0; j < n; j++) {
        printf("%d %d \n", tmp[j], res[j]);
      }
      printf("NG line(%d)\n", __LINE__);
      return 1;
    }
  }
  return 0;
}

template <class test_t>
test_t TC<test_t>::selstore_test_dis(const test_t *input, const test_t *input2,
                                     const int *mask, const test_t *res,
                                     int n) {
  test_t *tmp;
  tmp = new test_t[n];

  for (int i = 0; i < n; i += 2) {
    if (mask[i] > 0) {
      tmp[i] = input[i] + input2[i];
    } else {
      tmp[i] = input[i] - input2[i];
    }
  }

#pragma clang loop vectorize(disable)
  for (int i = 0; i < n; i += 2) {
    if (abs(abs(tmp[i]) - abs(res[i])) > 0.000002) {
      printf("NG line(%d)\n", __LINE__);
      return 1;
    }
  }
  return 0;
}

template <class test_t>
test_t TC<test_t>::selstore_test_vts(const test_t *input, const test_t *input2,
                                     const int *mask, const test_t res, int n) {
  test_t tt[1];

  for (int i = 0; i < n; i++) {
    if (mask[i] > 0) {
      tt[0] = input[i] + input2[i];
    } else {
      tt[0] = input[i] - input2[i];
    }
  }

  if (abs(abs(tt[0]) - abs(res)) > 0.000002) {
    printf("NG line(%d)\n", __LINE__);
    printf("%d %d \n", tt[0], res);
    return 1;
  }
  return 0;
}

template <class test_t>
test_t TC<test_t>::selstore_test_vsum(const test_t *input, const test_t *input2,
                                      const int *mask, const test_t res,
                                      int n) {
  test_t tt[1] = {0};

  for (int i = 0; i < n; i++) {
    if (mask[i] > 0) {
      tt[0] = tt[0] + input[i] + input2[i];
    }
  }

  if (abs(abs(tt[0]) - abs(res)) > 0.000002) {
    printf("NG line(%d)\n", __LINE__);
    printf("%d %d \n", tt[0], res);
    return 1;
  }
  return 0;
}

int main(void) {
  int i4[] = {-10, -1, 2, 3, -4, 5, 6, -7, 8, -9};
  long long int i8[] = {-10, -1, 2, 3, -4, 5, 6, -7, 8, -9};
  int i4x[] = {2, 2, 2, 2, 2, 2, 2, 2, 2, 2};
  long long int i8x[] = {2, 2, 2, 2, 2, 2, 2, 2, 2, 2};
  int result4[] = {-12, 1, 4, 1, -6, 3, 8, -5, 10, -11};
  long long int result8[] = {-12, 1, 4, 1, -6, 3, 8, -5, 10, -11};

  unsigned int u4[] = {20, 11, 2, 3, 14, 5, 6, 17, 8, 19};
  unsigned long long int u8[] = {20, 11, 2, 3, 14, 5, 6, 17, 8, 19};
  unsigned int u4x[] = {2, 2, 2, 2, 2, 2, 2, 2, 2, 2};
  unsigned long long int u8x[] = {2, 2, 2, 2, 2, 2, 2, 2, 2, 2};
  unsigned int uresult4[] = {18, 13, 4, 1, 12, 3, 8, 19, 10, 17};
  unsigned long long int uresult8[] = {18, 13, 4, 1, 12, 3, 8, 19, 10, 17};

  int mask[] = {-1, 10, 10, -1, -1, -1, 10, 10, 10, -1};
  int res = 0;

  TC<int> i4obj;
  TC<long long int> i8obj;
  TC<unsigned int> u4obj;
  TC<unsigned long long int> u8obj;

  res += i4obj.selstore_test(i4, i4x, mask, result4, 10);
  res += i4obj.selstore_test(i4, i4x, mask, result4, 9);
  res += i8obj.selstore_test(i8, i8x, mask, result8, 10);
  res += i8obj.selstore_test(i8, i8x, mask, result8, 9);

  res += i4obj.selstore_test_dis(i4, i4x, mask, result4, 10);
  res += i4obj.selstore_test_dis(i4, i4x, mask, result4, 9);
  res += i8obj.selstore_test_dis(i8, i8x, mask, result8, 10);
  res += i8obj.selstore_test_dis(i8, i8x, mask, result8, 9);

  res += i4obj.selstore_test_vts(i4, i4x, mask, -11, 10);
  res += i4obj.selstore_test_vts(i4, i4x, mask, 10, 9);
  res += i8obj.selstore_test_vts(i8, i8x, mask, -11, 10);
  res += i8obj.selstore_test_vts(i8, i8x, mask, 10, 9);

  res += i4obj.selstore_test_vsum(i4, i4x, mask, 18, 10);
  res += i4obj.selstore_test_vsum(i4, i4x, mask, 18, 9);
  res += i8obj.selstore_test_vsum(i8, i8x, mask, 18, 10);
  res += i8obj.selstore_test_vsum(i8, i8x, mask, 18, 9);

  res += u4obj.selstore_test(u4, u4x, mask, uresult4, 10);
  res += u4obj.selstore_test(u4, u4x, mask, uresult4, 9);
  res += u8obj.selstore_test(u8, u8x, mask, uresult8, 10);
  res += u8obj.selstore_test(u8, u8x, mask, uresult8, 9);

  res += u4obj.selstore_test_dis(u4, u4x, mask, uresult4, 10);
  res += u4obj.selstore_test_dis(u4, u4x, mask, uresult4, 9);
  res += u8obj.selstore_test_dis(u8, u8x, mask, uresult8, 10);
  res += u8obj.selstore_test_dis(u8, u8x, mask, uresult8, 9);

  res += u4obj.selstore_test_vts(u4, u4x, mask, 17, 10);
  res += u4obj.selstore_test_vts(u4, u4x, mask, 10, 9);
  res += u8obj.selstore_test_vts(u8, u8x, mask, 17, 10);
  res += u8obj.selstore_test_vts(u8, u8x, mask, 10, 9);

  res += u4obj.selstore_test_vsum(u4, u4x, mask, 54, 10);
  res += u4obj.selstore_test_vsum(u4, u4x, mask, 54, 9);
  res += u8obj.selstore_test_vsum(u8, u8x, mask, 54, 10);
  res += u8obj.selstore_test_vsum(u8, u8x, mask, 54, 9);

  if (res == 0) {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << "NG" << std::endl;
  }
  return 0;
}
