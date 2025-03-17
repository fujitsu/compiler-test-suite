#include <iostream>
#include <stdio.h>

template <class test_t> struct TC {
  test_t stepn0(const int n);
  test_t stepn1(const int n);
  test_t stepn2(const int n);
  test_t stepn3(const int n);
  int comp(const test_t *tmp, const int *mask, const int n, int nn);
};

template <class test_t> test_t TC<test_t>::stepn0(const int n) {
  test_t *tmp;
  int mask[99];
  tmp = new test_t[99];

  for (int i = 0; i < n; i++) {
    mask[i] = (i >= 50 ? 10 : -10);
  }

  for (int i = 0; i < n; i++) {
    if (mask[i] >= 0) {
      tmp[i] = 1.0;
    } else {
      tmp[i] = 0.0;
    }
  }

  return comp(tmp, mask, n, 1);
}

template <class test_t>
int TC<test_t>::comp(const test_t *tmp, const int *mask, const int n, int nn) {
#pragma clang loop vectorize(disable)
  for (int j = 0; j < n; j++) {
    if (j < 50) {
      if (tmp[j] != 0.0) {
        printf("NG %d line(%d) \n", j, __LINE__);

        for (int k = 0; k < n; k++) {
          printf("%x ", tmp[k]);
        }
        printf("\n");
        return 1;
      }
    } else {
      if (tmp[j] != 1.0 * nn) {
        printf("NG %d line(%d) \n", j, __LINE__);

        for (int k = 0; k < n; k++) {
          printf("%x ", tmp[k]);
        }
        printf("\n");
        return 1;
      }
    }
  }
  return 0;
}

template <class test_t> test_t TC<test_t>::stepn1(const int n) {
  test_t *tmp, h, *y;
  int mask[99];
  tmp = new test_t[99];
  y = new test_t[99];

  for (int i = 0; i < n; i++) {
    mask[i] = (i >= 50 ? 10 : -10);
    y[i] = 2.0;
  }

  for (int i = 0; i < n; i++) {
    if (mask[i] >= 0) {
      h = 1.0;
    } else {
      h = 0.0;
    }
    tmp[i] = h * y[i];
  }

  return comp(tmp, mask, n, 2);
}

template <class test_t> test_t TC<test_t>::stepn2(const int n) {
  test_t *tmp, h, *y;
  int mask[99];
  tmp = new test_t[99];
  y = new test_t[99];

  for (int i = 0; i < n; i++) {
    mask[i] = (i >= 50 ? 10 : -10);
    y[i] = 2.0;
  }

  for (int i = 0; i < n; i++) {
    h = 0.0;
    if (mask[i] >= 0) {
      h = 1.0;
    }
    tmp[i] = h * y[i];
  }

  return comp(tmp, mask, n, 2);
}

template <class test_t> test_t TC<test_t>::stepn3(const int n) {
  test_t *tmp, h, *y;
  int mask[99];
  tmp = new test_t[99];
  y = new test_t[99];

  for (int i = 0; i < n; i++) {
    mask[i] = (i >= 50 ? 10 : -10);
    y[i] = 2.0;
  }

  for (int i = 0; i < n; i++) {
    if (mask[i] >= 0) {
      h = y[i];
    } else {
      h = 0.0;
    }
    tmp[i] = h;
  }

  return comp(tmp, mask, n, 2);
}

int main(void) {
  int res = 0;

  TC<int> i4obj;
  TC<long long int> i8obj;
  TC<unsigned int> u4obj;
  TC<unsigned long long int> u8obj;
  TC<float> r4obj;
  TC<double> r8obj;

  res += i4obj.stepn0(98);
  res += i4obj.stepn0(99);
  res += i8obj.stepn0(98);
  res += i8obj.stepn0(99);
  res += u4obj.stepn0(98);
  res += u4obj.stepn0(99);
  res += u8obj.stepn0(98);
  res += u8obj.stepn0(99);
  res += r4obj.stepn0(98);
  res += r4obj.stepn0(99);
  res += r8obj.stepn0(98);
  res += r8obj.stepn0(99);

  res += i4obj.stepn1(98);
  res += i4obj.stepn1(99);
  res += i8obj.stepn1(98);
  res += i8obj.stepn1(99);
  res += u4obj.stepn1(98);
  res += u4obj.stepn1(99);
  res += u8obj.stepn1(98);
  res += u8obj.stepn1(99);
  res += r4obj.stepn1(98);
  res += r4obj.stepn1(99);
  res += r8obj.stepn1(98);
  res += r8obj.stepn1(99);

  res += i4obj.stepn2(98);
  res += i4obj.stepn2(99);
  res += i8obj.stepn2(98);
  res += i8obj.stepn2(99);
  res += u4obj.stepn2(98);
  res += u4obj.stepn2(99);
  res += u8obj.stepn2(98);
  res += u8obj.stepn2(99);
  res += r4obj.stepn2(98);
  res += r4obj.stepn2(99);
  res += r8obj.stepn2(98);
  res += r8obj.stepn2(99);

  res += i4obj.stepn3(98);
  res += i4obj.stepn3(99);
  res += i8obj.stepn3(98);
  res += i8obj.stepn3(99);
  res += u4obj.stepn3(98);
  res += u4obj.stepn3(99);
  res += u8obj.stepn3(98);
  res += u8obj.stepn3(99);
  res += r4obj.stepn3(98);
  res += r4obj.stepn3(99);
  res += r8obj.stepn3(98);
  res += r8obj.stepn3(99);

  if (res == 0) {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << "NG" << std::endl;
  }
  return 0;
}
