#include <iostream>
#include <stdio.h>

template <class test_t> struct TC {
  test_t shift_test(const test_t *input1, int n);
  test_t shift_test_minus(const test_t *input1, int n);
};

template <class test_t>
test_t TC<test_t>::shift_test(const test_t *input1, int n) {
  test_t *tmp;
  tmp = new test_t[n];
  for (int i = 0; i < n; i++) {
    tmp[i] = input1[i] >> 1;
  }

#pragma clang loop vectorize(disable)
  for (int j = 0; j < n; j++) {
    if (tmp[j] != (test_t)(input1[j] >> 1)) {
      printf("NG line(%d)\n", __LINE__);

      for (int k = 0; k < n; k++) {
        printf("%d %d \n", tmp[k], (test_t)(input1[k] >> 1));
      }
      return 1;
    }
  }
  return 0;
}

template <class test_t>
test_t TC<test_t>::shift_test_minus(const test_t *input1, int n) {
  test_t *tmp;
  tmp = new test_t[n];
  test_t yin = 0;
  for (int i = 0; i < n; i++) {
    tmp[i] = input1[i] >> (-1);
  }

#pragma clang loop vectorize(disable)
  for (int j = 0; j < n; j++) {
    if (tmp[j] != (test_t)(input1[j] >> (-1))) {
      printf("NG line(%d)\n", __LINE__);
      return 1;
    }
  }
  return 0;
}

int main(void) {
  signed char i1[] = {1, 1, 1, 1, -1, -1, -1, -1, 1, -1};
  short i2[] = {1, 1, 1, 1, -1, -1, -1, -1, 1, -1};
  int i4[] = {1, 1, 1, 1, -1, -1, -1, -1, 1, -1};
  long long int i8[] = {1, 1, 1, 1, -1, -1, -1, -1, 1, -1};
#ifdef __clang__
  unsigned char u1[] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
  unsigned short u2[] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
  unsigned int u4[] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
  unsigned long long int u8[] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
#else
  unsigned char u1[] = {1, 1, 1, 1, -1, -1, -1, -1, 1, -1};
  unsigned short u2[] = {1, 1, 1, 1, -1, -1, -1, -1, 1, -1};
  unsigned int u4[] = {1, 1, 1, 1, -1, -1, -1, -1, 1, -1};
  unsigned long long int u8[] = {1, 1, 1, 1, -1, -1, -1, -1, 1, -1};
#endif

  int res = 0;

  TC<signed char> i1obj;
  TC<short> i2obj;
  TC<int> i4obj;
  TC<long long int> i8obj;
  TC<unsigned char> u1obj;
  TC<unsigned short> u2obj;
  TC<unsigned int> u4obj;
  TC<unsigned long long int> u8obj;

  res += i1obj.shift_test(i1, 10);
  res += i1obj.shift_test(i1, 9);
  res += i2obj.shift_test(i2, 10);
  res += i2obj.shift_test(i2, 9);
  res += i4obj.shift_test(i4, 10);
  res += i4obj.shift_test(i4, 9);
  res += i8obj.shift_test(i8, 10);
  res += i8obj.shift_test(i8, 9);

  res += u1obj.shift_test(u1, 10);
  res += u1obj.shift_test(u1, 9);
  res += u2obj.shift_test(u2, 10);
  res += u2obj.shift_test(u2, 9);
  res += u4obj.shift_test(u4, 10);
  res += u4obj.shift_test(u4, 9);
  res += u8obj.shift_test(u8, 10);
  res += u8obj.shift_test(u8, 9);

#ifndef __clang__
  res += i1obj.shift_test_minus(i1, 10);
  res += i1obj.shift_test_minus(i1, 9);
  res += i2obj.shift_test_minus(i2, 10);
  res += i2obj.shift_test_minus(i2, 9);
  res += i4obj.shift_test_minus(i4, 10);
  res += i4obj.shift_test_minus(i4, 9);
  res += i8obj.shift_test_minus(i8, 10);
  res += i8obj.shift_test_minus(i8, 9);

  res += u1obj.shift_test_minus(u1, 10);
  res += u1obj.shift_test_minus(u1, 9);
  res += u2obj.shift_test_minus(u2, 10);
  res += u2obj.shift_test_minus(u2, 9);
  res += u4obj.shift_test_minus(u4, 10);
  res += u4obj.shift_test_minus(u4, 9);
  res += u8obj.shift_test_minus(u8, 10);
  res += u8obj.shift_test_minus(u8, 9);
#endif

  if (res == 0) {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << "NG" << std::endl;
  }
  return 0;
}
