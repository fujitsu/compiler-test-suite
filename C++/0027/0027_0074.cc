#include <iostream>
#include <stdio.h>

template <class test_t> struct TC {
  void memset_test(test_t *input1, const int n);
  test_t memcpy_test(const test_t *input1, const int n);
};

template <class test_t>
test_t TC<test_t>::memcpy_test(const test_t *input1, const int n) {
  test_t *tmp;
  tmp = new test_t[100];

  for (int i = 0; i < 100; i++) {
    tmp[i] = 0;
  }

  for (int i = 0; i < n; i++) {
    tmp[i] = (test_t)input1[i];
  }

#pragma clang loop vectorize(disable)
  for (int j = 0; j < n; j++) {
    if (tmp[j] != (test_t)input1[j]) {
      printf("NG line(%d) \n", __LINE__);

      for (int k = 0; k < n; k++) {
        printf("%x %x \n", tmp[k], (test_t)(input1[k]));
      }
      return 1;
    }
  }
  return 0;
}

template <class test_t>
void TC<test_t>::memset_test(test_t *input1, const int n) {
  for (int i = 0; i < n; i++) {
    input1[i] = (test_t)i;
  }
}

int main(void) {
  char i1[100];
  short i2[100];
  int i4[100];
  long long int i8[100];
  unsigned char u1[100];
  unsigned short u2[100];
  unsigned int u4[100];
  unsigned long long int u8[100];
  float r4[100];
  double r8[100];
  long double r16[100];

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

  i1obj.memset_test(i1, 100);
  i2obj.memset_test(i2, 100);
  i4obj.memset_test(i4, 100);
  i8obj.memset_test(i8, 100);
  u1obj.memset_test(u1, 100);
  u2obj.memset_test(u2, 100);
  u4obj.memset_test(u4, 100);
  u8obj.memset_test(u8, 100);
  r4obj.memset_test(r4, 100);
  r8obj.memset_test(r8, 100);
  r16obj.memset_test(r16, 100);

  res += i1obj.memcpy_test(i1, 64);
  res += i1obj.memcpy_test(i1, 70);
  res += i2obj.memcpy_test(i2, 64);
  res += i2obj.memcpy_test(i2, 70);
  res += i4obj.memcpy_test(i4, 64);
  res += i4obj.memcpy_test(i4, 70);
  res += i8obj.memcpy_test(i8, 64);
  res += i8obj.memcpy_test(i8, 70);

  res += u1obj.memcpy_test(u1, 64);
  res += u1obj.memcpy_test(u1, 70);
  res += u2obj.memcpy_test(u2, 64);
  res += u2obj.memcpy_test(u2, 70);
  res += u4obj.memcpy_test(u4, 64);
  res += u4obj.memcpy_test(u4, 70);
  res += u8obj.memcpy_test(u8, 64);
  res += u8obj.memcpy_test(u8, 70);

  res += r4obj.memcpy_test(r4, 64);
  res += r4obj.memcpy_test(r4, 70);
  res += r8obj.memcpy_test(r8, 64);
  res += r8obj.memcpy_test(r8, 70);
  res += r16obj.memcpy_test(r16, 64);
  res += r16obj.memcpy_test(r16, 70);

  if (res == 0) {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << "NG" << std::endl;
  }
  return 0;
}
