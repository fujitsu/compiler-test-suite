#include <iostream>
#include <stdio.h>

template <class test_t> struct TC {
  test_t div_test(const test_t *input, const test_t *input2, int n);
  test_t div_testmix1(const test_t *input, const float *input2, int n);
  test_t div_testmix2(const test_t *input, const double *input2, int n);
  test_t div_testmix3(const float *input, const float *input2, int n);
  test_t div_testmix4(const double *input, const double *input2, int n);
};

template <class test_t>
test_t TC<test_t>::div_test(const test_t *input, const test_t *input2, int n) {
  test_t *tmp;
  tmp = new test_t[n];

  for (int i = 0; i < n; i++) {
    tmp[i] = input2[i] / input[i];
  }

#pragma clang loop vectorize(disable)
  for (int i = 0; i < n; i++) {
    if (abs(tmp[i] - (input2[i] / input[i])) > 0.000002) {
      printf("NG line(%d)\n", __LINE__);
      return 1;
    }
  }
  return 0;
}

template <class test_t>
test_t TC<test_t>::div_testmix1(const test_t *input, const float *input2,
                                int n) {
  test_t *tmp;
  tmp = new test_t[n];

  for (int i = 0; i < n; i++) {
    tmp[i] = input2[i] / input[i];
  }

#pragma clang loop vectorize(disable)
  for (int i = 0; i < n; i++) {
    if (abs(tmp[i] - (input2[i] / input[i])) > 0.000002) {
      printf("NG line(%d)\n", __LINE__);
      return 1;
    }
  }
  return 0;
}

template <class test_t>
test_t TC<test_t>::div_testmix2(const test_t *input, const double *input2,
                                int n) {
  test_t *tmp;
  tmp = new test_t[n];

  for (int i = 0; i < n; i++) {
    tmp[i] = input2[i] / input[i];
  }

#pragma clang loop vectorize(disable)
  for (int i = 0; i < n; i++) {
    if (abs(tmp[i] - (input2[i] / input[i])) > 0.000002) {
      printf("NG line(%d)\n", __LINE__);
      return 1;
    }
  }
  return 0;
}

template <class test_t>
test_t TC<test_t>::div_testmix3(const float *input, const float *input2,
                                int n) {
  test_t *tmp;
  tmp = new test_t[n];

  for (int i = 0; i < n; i++) {
    tmp[i] = input2[i] / input[i];
  }

#pragma clang loop vectorize(disable)
  for (int i = 0; i < n; i++) {
    if (abs(tmp[i] - (input2[i] / input[i])) > 0.000002) {
      printf("NG line(%d)\n", __LINE__);
      return 1;
    }
  }
  return 0;
}

template <class test_t>
test_t TC<test_t>::div_testmix4(const double *input, const double *input2,
                                int n) {
  test_t *tmp;
  tmp = new test_t[n];

  for (int i = 0; i < n; i++) {
    tmp[i] = input2[i] / input[i];
  }

#pragma clang loop vectorize(disable)
  for (int i = 0; i < n; i++) {
    if (abs(tmp[i] - (input2[i] / input[i])) > 0.000002) {
      printf("NG line(%d)\n", __LINE__);
      return 1;
    }
  }
  return 0;
}

int main(void) {
  float r4[] = {-10, -1, 2, 3, -4, 5, 6, -7, 8, -9};
  double r8[] = {-10, -1, 2, 3, -4, 5, 6, -7, 8, -9};
  float r4x[] = {2, 2, 2, 2, 2, 2, 2, 2, 2, 2};
  double r8x[] = {2, 2, 2, 2, 2, 2, 2, 2, 2, 2};
  int res = 0;

  TC<float> r4obj;
  TC<double> r8obj;

  res += r4obj.div_test(r4, r4x, 10);
  res += r4obj.div_test(r4, r4x, 9);
  res += r4obj.div_testmix2(r4, r8x, 10);
  res += r4obj.div_testmix2(r4, r8x, 9);
  res += r4obj.div_testmix4(r8, r8x, 10);
  res += r4obj.div_testmix4(r8, r8x, 9);

  res += r8obj.div_test(r8, r8x, 10);
  res += r8obj.div_test(r8, r8x, 9);
  res += r8obj.div_testmix1(r8, r4x, 10);
  res += r8obj.div_testmix1(r8, r4x, 9);
  res += r8obj.div_testmix3(r4, r4x, 10);
  res += r8obj.div_testmix3(r4, r4x, 9);

  if (res == 0) {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << "NG" << std::endl;
  }
  return 0;
}
