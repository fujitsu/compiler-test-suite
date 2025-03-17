#include <cmath>
#include <cstdarg>
#include <iostream>

template <class T> void f1(T *pa, T const *const pb, T &ret1, T ret2, ...) {
  T i, fin, tmp;
  va_list ap;
  va_start(ap, ret2);
  fin = va_arg(ap, T);
  va_end(ap);

  for (i = 0; i < fin; ++i) {

    ret2 = fin * 2;

    tmp = i * 4;

    tmp = i * 2;

    pa[i] = pb[i];

    tmp = i * 2;
  }
  ret1 = tmp;
}

template <>
void f1(char *pa, char const *const pb, char &ret1, char ret2, ...) {
  char i, fin, tmp;
  va_list ap;
  va_start(ap, ret2);
  fin = va_arg(ap, int);
  va_end(ap);

  for (i = 0; i < fin; ++i) {

    ret2 = fin * 2;

    tmp = i * 4;

    tmp = i * 2;

    pa[i] = pb[i];

    tmp = i * 2;
  }
  ret1 = tmp;
}

template <>
void f1(unsigned char *pa, unsigned char const *const pb, unsigned char &ret1,
        unsigned char ret2, ...) {
  unsigned char i, fin, tmp;
  va_list ap;
  va_start(ap, ret2);
  fin = va_arg(ap, int);
  va_end(ap);

  for (i = 0; i < fin; ++i) {

    ret2 = fin * 2;

    tmp = i * 4;

    tmp = i * 2;

    pa[i] = pb[i];

    tmp = i * 2;
  }
  ret1 = tmp;
}

template <>
void f1(short int *pa, short int const *const pb, short int &ret1,
        short int ret2, ...) {
  short int i, fin, tmp;
  va_list ap;
  va_start(ap, ret2);
  fin = va_arg(ap, int);
  va_end(ap);

  for (i = 0; i < fin; ++i) {

    ret2 = fin * 2;

    tmp = i * 4;

    tmp = i * 2;

    pa[i] = pb[i];

    tmp = i * 2;
  }
  ret1 = tmp;
}

template <>
void f1(unsigned short int *pa, unsigned short int const *const pb,
        unsigned short int &ret1, unsigned short int ret2, ...) {
  unsigned short int i, fin, tmp;
  va_list ap;
  va_start(ap, ret2);
  fin = va_arg(ap, int);
  va_end(ap);

  for (i = 0; i < fin; ++i) {

    ret2 = fin * 2;

    tmp = i * 4;

    tmp = i * 2;

    pa[i] = pb[i];

    tmp = i * 2;
  }
  ret1 = tmp;
}

template <class T> int check_array(T *p) {
  T i;
  for (i = 0; i < 10; ++i) {
    if (p[i] != i) {
      return 1;
    }
  }
  return 0;
}

int main() {
  int ng_flag = 0;
  {
    char ret1 = 0, ret2 = 0, a[10], b[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    f1(a, b, ret1, ret2, 10);
    if (check_array(a) || ret1 != 18 || ret2 != 0) {
      ng_flag = 1;
      std::cout << "NG : char : " << ret1 << " : " << ret2 << std::endl;
    }
  }
  {
    unsigned char ret1 = 0, ret2 = 0, a[10],
                  b[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    f1(a, b, ret1, ret2, 10);
    if (check_array(a) || ret1 != 18 || ret2 != 0) {
      ng_flag = 1;
      std::cout << "NG : unsigned char : " << ret1 << " : " << ret2
                << std::endl;
    }
  }
  {
    short int ret1 = 0, ret2 = 0, a[10], b[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    f1(a, b, ret1, ret2, 10);
    if (check_array(a) || ret1 != 18 || ret2 != 0) {
      ng_flag = 1;
      std::cout << "NG : short int" << ret1 << " : " << ret2 << std::endl;
    }
  }
  {
    unsigned short int ret1 = 0, ret2 = 0, a[10],
                       b[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    f1(a, b, ret1, ret2, 10);
    if (check_array(a) || ret1 != 18 || ret2 != 0) {
      ng_flag = 1;
      std::cout << "NG : unsigned short int" << ret1 << " : " << ret2
                << std::endl;
    }
  }
  {
    int ret1 = 0, ret2 = 0, a[10], b[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    f1(a, b, ret1, ret2, 10);
    if (check_array(a) || ret1 != 18 || ret2 != 0) {
      ng_flag = 1;
      std::cout << "NG : int" << ret1 << " : " << ret2 << std::endl;
    }
  }
  {
    unsigned int ret1 = 0, ret2 = 0, a[10],
                 b[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    f1(a, b, ret1, ret2, 10);
    if (check_array(a) || ret1 != 18 || ret2 != 0) {
      ng_flag = 1;
      std::cout << "NG : unsigned int" << ret1 << " : " << ret2 << std::endl;
    }
  }
  {
    long long int ret1 = 0, ret2 = 0, a[10],
                  b[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    f1(a, b, ret1, ret2, 10);
    if (check_array(a) || ret1 != 18 || ret2 != 0) {
      ng_flag = 1;
      std::cout << "NG : long long int" << ret1 << " : " << ret2 << std::endl;
    }
  }
  {
    unsigned long long int ret1 = 0, ret2 = 0, a[10],
                           b[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    f1(a, b, ret1, ret2, 10);
    if (check_array(a) || ret1 != 18 || ret2 != 0) {
      ng_flag = 1;
      std::cout << "NG : unsigned long long int" << ret1 << " : " << ret2
                << std::endl;
    }
  }
  if (ng_flag == 0) {
    std::cout << "OK" << std::endl;
  }
  return 0;
}
