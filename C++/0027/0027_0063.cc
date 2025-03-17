#include <iostream>
#include <stdio.h>

template <class test_t> struct TC {
  test_t umin_test(const test_t *input, int n);
  test_t umin_test_sum(const test_t *input, int n, const test_t res);
  test_t umin_test_vts(const test_t *input, int n, const test_t res);
};

template <class test_t>
test_t TC<test_t>::umin_test(const test_t *input, int n) {
  test_t *tmp;
  tmp = new test_t[n];

  for (int i = 0; i < n; i++) {
    tmp[i] = -input[i];
  }

#pragma clang loop vectorize(disable)
  for (int i = 0; i < n; i++) {
    if (tmp[i] != -input[i]) {
      printf("NG line(%d)\n", __LINE__);
      return 1;
    }
  }
  return 0;
}

template <class test_t>
test_t TC<test_t>::umin_test_sum(const test_t *input, int n, const test_t res) {
  test_t tmp = 0;
  for (int i = 0; i < n; i++) {
    tmp += (-input[i]);
  }

  if (tmp != res) {
    printf("NG tmp=%g res=%g line(%d)\n", tmp, res, __LINE__);
    return 1;
  }
  return 0;
}

template <class test_t>
test_t TC<test_t>::umin_test_vts(const test_t *input, int n, const test_t res) {
  test_t tmp = 0;
  for (int i = 0; i < n; i++) {
    tmp = (-input[i]);
  }

  if (tmp != res) {
    printf("NG tmp=%g res=%g line(%d)\n", tmp, res, __LINE__);
    return 1;
  }
  return 0;
}

int main(void) {
  float r4[] = {-0, -1, 2, 3, -4, 5, 6, -7, 8, -9};
  double r8[] = {-0, -1, 2, 3, -4, 5, 6, -7, 8, -9};
  int res = 0;

  TC<float> r4obj;
  TC<double> r8obj;

  res += r4obj.umin_test(r4, 10);
  res += r4obj.umin_test(r4, 9);
  res += r4obj.umin_test_sum(r4, 10, -3);
  res += r4obj.umin_test_sum(r4, 9, -12);
  res += r4obj.umin_test_vts(r4, 10, 9);
  res += r4obj.umin_test_vts(r4, 9, -8);

  res += r8obj.umin_test(r8, 10);
  res += r8obj.umin_test(r8, 9);
  res += r8obj.umin_test_sum(r8, 10, -3);
  res += r8obj.umin_test_sum(r8, 9, -12);
  res += r8obj.umin_test_vts(r8, 10, 9);
  res += r8obj.umin_test_vts(r8, 9, -8);

  if (res == 0) {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << "NG" << std::endl;
  }
  return 0;
}
