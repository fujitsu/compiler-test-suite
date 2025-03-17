#include <iostream>
#include <stdio.h>

template <class test_t> struct TC {
  void init(test_t *tmp, int n);
  test_t plus_access(const int n, const test_t rres);
  int comp(const test_t *tmp, int n, const test_t rres);
};

template <class test_t>
int TC<test_t>::comp(const test_t *tmp, int n, const test_t rres) {
  test_t res = 0;
  for (int i = 0; i < n; i++) {
    res = res + tmp[i];
  }
  if (res != rres) {
    for (int i = 0; i < n; i++) {
      printf("%g ", tmp[i]);
    }
    printf("\n%g \n", res);
    return 1;
  } else {
    return 0;
  }
}

template <class test_t>
test_t TC<test_t>::plus_access(const int n, const test_t rres) {
  test_t *tmp;
  tmp = new test_t[20];

  init(tmp, n);

  for (int i = 0; i < n - 5; i++) {
    tmp[i] = tmp[i] + tmp[i + 2] * tmp[i + 3] - tmp[i + 1];
    tmp[i + 1] = tmp[i + 4] + tmp[i + 3] * tmp[i + 2] - tmp[i + 1];
  }

  return comp(tmp, n, rres);
}

template <class test_t> void TC<test_t>::init(test_t *tmp, const int n) {
  for (int i = 0; i < n; i++) {
    tmp[i] = i;
  }
}

int main(void) {
  int res = 0;

  TC<float> r4obj;
  TC<double> r8obj;

  res += r4obj.plus_access(20, 3255);
  res += r8obj.plus_access(20, 3255);
  res += r4obj.plus_access(19, 2719);
  res += r8obj.plus_access(19, 2719);

  if (res == 0) {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << "NG" << std::endl;
  }
  return 0;
}
