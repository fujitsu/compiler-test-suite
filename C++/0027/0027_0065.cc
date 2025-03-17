#include <iostream>
#include <stdio.h>

template <class test_t> struct TC {
  test_t select_test(const test_t *input, const test_t *input2, const int *mask,
                     const test_t *res, int n);
  test_t select_test_dis(const test_t *input, const test_t *input2,
                         const int *mask, const test_t *res, int n);
  test_t select_test_vts(const test_t *input, const test_t *input2,
                         const int *mask, const test_t res, int n);
  test_t select_test_vsum(const test_t *input, const test_t *input2,
                          const int *mask, const test_t res, int n);
};

template <class test_t>
test_t TC<test_t>::select_test(const test_t *input, const test_t *input2,
                               const int *mask, const test_t *res, int n) {
  test_t *tmp, tt;
  tmp = new test_t[n];

  for (int i = 0; i < n; i++) {
    if (mask[i] > 0) {
      tt = input[i] + input2[i];
    } else {
      tt = input[i] - input2[i];
    }
    tmp[i] = tt;
  }

#pragma clang loop vectorize(disable)
  for (int i = 0; i < n; i++) {
    if (abs(abs(tmp[i]) - abs(res[i])) > 0.000002) {
      for (int j = 0; j < n; j++) {
        printf("%f %f \n", tmp[j], res[j]);
      }
      printf("NG line(%d)\n", __LINE__);
      return 1;
    }
  }
  return 0;
}

template <class test_t>
test_t TC<test_t>::select_test_dis(const test_t *input, const test_t *input2,
                                   const int *mask, const test_t *res, int n) {
  test_t *tmp, tt;
  tmp = new test_t[n];

  for (int i = 0; i < n; i += 2) {
    if (mask[i] > 0) {
      tt = input[i] + input2[i];
    } else {
      tt = input[i] - input2[i];
    }
    tmp[i] = tt;
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
test_t TC<test_t>::select_test_vts(const test_t *input, const test_t *input2,
                                   const int *mask, const test_t res, int n) {
  test_t tt;

  for (int i = 0; i < n; i++) {
    if (mask[i] > 0) {
      tt = input[i] + input2[i];
    } else {
      tt = input[i] - input2[i];
    }
  }

  if (abs(abs(tt) - abs(res)) > 0.000002) {
    printf("NG line(%d)\n", __LINE__);
    printf("%g %g \n", tt, res);
    return 1;
  }
  return 0;
}

template <class test_t>
test_t TC<test_t>::select_test_vsum(const test_t *input, const test_t *input2,
                                    const int *mask, const test_t res, int n) {
  test_t tt = 0;

  for (int i = 0; i < n; i++) {
    if (mask[i] > 0) {
      tt = tt + input[i] + input2[i];
    }
  }

  if (abs(abs(tt) - abs(res)) > 0.000002) {
    printf("NG line(%d)\n", __LINE__);
    printf("%g %g \n", tt, res);
    return 1;
  }
  return 0;
}

int main(void) {
  float r4[] = {-10, -1, 2, 3, -4, 5, 6, -7, 8, -9};
  double r8[] = {-10, -1, 2, 3, -4, 5, 6, -7, 8, -9};
  float r4x[] = {2, 2, 2, 2, 2, 2, 2, 2, 2, 2};
  double r8x[] = {2, 2, 2, 2, 2, 2, 2, 2, 2, 2};
  int mask[] = {-1, 10, 10, -1, -1, -1, 10, 10, 10, -1};
  float result4[] = {-12, 1, 4, 1, -6, 3, 8, -5, 10, -11};
  double result8[] = {-12, 1, 4, 1, -6, 3, 8, -5, 10, -11};
  int res = 0;

  TC<float> r4obj;
  TC<double> r8obj;

  res += r4obj.select_test(r4, r4x, mask, result4, 10);
  res += r4obj.select_test(r4, r4x, mask, result4, 9);
  res += r8obj.select_test(r8, r8x, mask, result8, 10);
  res += r8obj.select_test(r8, r8x, mask, result8, 9);

  res += r4obj.select_test_dis(r4, r4x, mask, result4, 10);
  res += r4obj.select_test_dis(r4, r4x, mask, result4, 9);
  res += r8obj.select_test_dis(r8, r8x, mask, result8, 10);
  res += r8obj.select_test_dis(r8, r8x, mask, result8, 9);

  res += r4obj.select_test_vts(r4, r4x, mask, -11, 10);
  res += r4obj.select_test_vts(r4, r4x, mask, 10, 9);
  res += r8obj.select_test_vts(r8, r8x, mask, -11, 10);
  res += r8obj.select_test_vts(r8, r8x, mask, 10, 9);

  res += r4obj.select_test_vsum(r4, r4x, mask, 18, 10);
  res += r4obj.select_test_vsum(r4, r4x, mask, 18, 9);
  res += r8obj.select_test_vsum(r8, r8x, mask, 18, 10);
  res += r8obj.select_test_vsum(r8, r8x, mask, 18, 9);

  if (res == 0) {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << "NG" << std::endl;
  }
  return 0;
}
