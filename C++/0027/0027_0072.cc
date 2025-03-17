#include <iostream>
#include <stdio.h>

template <class test_t> struct TC {
  test_t inv_test(const test_t *input1, const test_t *input2, int n);
};

template <class test_t>
test_t TC<test_t>::inv_test(const test_t *input1, const test_t *input2, int n) {
  test_t *tmp;
  tmp = new test_t[n];
  test_t yin = 0;
  for (int i = 0; i < n; i++) {
    tmp[i] = input1[i] + input2[i] + yin;
    yin++;
  }

#pragma clang loop vectorize(disable)
  for (int j = 0; j < n; j++) {
    if (tmp[j] != input1[j] + input2[j] + j) {
      printf("NG line(%d)\n", __LINE__);
      return 1;
    }
  }
  return 0;
}

int main(void) {
  char i1[] = {-0, -1, 2, 3, -4, 5, 6, -7, 8, -9};
  short i2[] = {-0, -1, 2, 3, -4, 5, 6, -7, 8, -9};
  int i4[] = {-0, -1, 2, 3, -4, 5, 6, -7, 8, -9};
  long long int i8[] = {-0, -1, 2, 3, -4, 5, 6, -7, 8, -9};
  unsigned char u1[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
  unsigned short u2[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
  unsigned int u4[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
  unsigned long long int u8[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
  float r4[] = {-0, -1, 2, 3, -4, 5, 6, -7, 8, -9};
  double r8[] = {-0, -1, 2, 3, -4, 5, 6, -7, 8, -9};
  long double r16[] = {-0, -1, 2, 3, -4, 5, 6, -7, 8, -9};
  int res = 0;

  TC<char> i1obj;
  TC<short> i2obj;
  TC<int> i4obj;
  TC<long long int> i8obj;
  TC<unsigned char> u1obj;
  TC<unsigned short> u2obj;
  TC<unsigned int> u4obj;
  TC<unsigned long long int> u8obj;
  TC<float> r4obj;
  TC<double> r8obj;
  TC<long double> r16obj;

  res += i1obj.inv_test(i1, i1, 10);
  res += i1obj.inv_test(i1, i1, 9);
  res += i2obj.inv_test(i2, i2, 10);
  res += i2obj.inv_test(i2, i2, 9);
  res += i4obj.inv_test(i4, i4, 10);
  res += i4obj.inv_test(i4, i4, 9);
  res += i8obj.inv_test(i8, i8, 10);
  res += i8obj.inv_test(i8, i8, 9);

  res += u1obj.inv_test(u1, u1, 10);
  res += u1obj.inv_test(u1, u1, 9);
  res += u2obj.inv_test(u2, u2, 10);
  res += u2obj.inv_test(u2, u2, 9);
  res += u4obj.inv_test(u4, u4, 10);
  res += u4obj.inv_test(u4, u4, 9);
  res += u8obj.inv_test(u8, u8, 10);
  res += u8obj.inv_test(u8, u8, 9);

  res += r4obj.inv_test(r4, r4, 10);
  res += r4obj.inv_test(r4, r4, 9);
  res += r8obj.inv_test(r8, r8, 10);
  res += r8obj.inv_test(r8, r8, 9);
  res += r16obj.inv_test(r16, r16, 10);
  res += r16obj.inv_test(r16, r16, 9);

  if (res == 0) {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << "NG" << std::endl;
  }
  return 0;
}
