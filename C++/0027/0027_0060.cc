#include <cmath>
#include <cstdarg>
#include <iostream>

template <class T> void f1(T *pa, T const *const pb, T &ret1, T ret2, ...) {
  unsigned long i;
  T fin, tmp;
  va_list ap;
  va_start(ap, ret2);
  fin = va_arg(ap, T);
  va_end(ap);

  for (i = 0; i < (unsigned long)fin; ++i) {

    ret2 = fin * 2;

    tmp = (T)i * 4;

    tmp = (T)i * 2;

    pa[i] = pb[i];

    tmp = (T)i * 2;
  }
  ret1 = tmp;
}

template <class T> void f2(T *pa, T const *const pb, T &ret1, T ret2, ...) {
  long long int i;
  T fin, tmp;
  va_list ap;
  va_start(ap, ret2);
  fin = va_arg(ap, T);
  va_end(ap);

  for (i = 0; i < (long long)fin; ++i) {

    ret2 = fin * 2;

    tmp = (T)i * 4;

    tmp = (T)i * 2;

    pa[i] = pb[i];

    tmp = (T)i * 2;
  }
  ret1 = tmp;
}

template <>
void f1(float *pa, float const *const pb, float &ret1, float ret2, ...) {
  unsigned long i;
  float fin, tmp;
  va_list ap;
  va_start(ap, ret2);
  fin = (float)va_arg(ap, double);
  va_end(ap);

  for (i = 0; i < (unsigned long)fin; ++i) {

    ret2 = fin * 2;

    tmp = (float)i * 4;

    tmp = (float)i * 2;

    pa[i] = pb[i];

    tmp = (float)i * 2;
  }
  ret1 = tmp;
}

template <>
void f2(float *pa, float const *const pb, float &ret1, float ret2, ...) {
  long long int i;
  float fin, tmp;
  va_list ap;
  va_start(ap, ret2);
  fin = (float)va_arg(ap, double);
  va_end(ap);

  for (i = 0; i < (long long)fin; ++i) {

    ret2 = fin * 2;

    tmp = (float)i * 4;

    tmp = (float)i * 2;

    pa[i] = pb[i];

    tmp = (float)i * 2;
  }
  ret1 = tmp;
}

template <class T> int check_array(T *p) {
  long long i;
  for (i = 0; i < 10; ++i) {
    if (p[i] != (T)i) {
      return 1;
    }
  }
  return 0;
}

int main() {
  int ng_flag = 0;
  {
    float ret1 = 0, ret2 = 0, a1[10], a2[10],
          b[10] = {0.0F, 1.0F, 2.0F, 3.0F, 4.0F, 5.0F, 6.0F, 7.0F, 8.0F, 9.0F};
    f1(a1, b, ret1, ret2, 10.0);
    if (check_array(a1) || ret1 != 18.0F || ret2 != 0.0F) {
      ng_flag = 1;
      std::cout << "NG-f1 : float : " << ret1 << " : " << ret2 << std::endl;
    }
    f2(a2, b, ret1, ret2, 10.0);
    if (check_array(a2) || ret1 != 18.0F || ret2 != 0.0F) {
      ng_flag = 1;
      std::cout << "NG-f2 : float : " << ret1 << " : " << ret2 << std::endl;
    }
  }
  {
    double ret1 = 0, ret2 = 0, a1[10], a2[10],
           b[10] = {0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0};
    f1(a1, b, ret1, ret2, 10.0);
    if (check_array(a1) || ret1 != 18.0 || ret2 != 0.0) {
      ng_flag = 1;
      std::cout << "NG-f1 : double : " << ret1 << " : " << ret2 << std::endl;
    }
    f2(a2, b, ret1, ret2, 10.0);
    if (check_array(a2) || ret1 != 18.0 || ret2 != 0.0) {
      ng_flag = 1;
      std::cout << "NG-f2 : double : " << ret1 << " : " << ret2 << std::endl;
    }
  }
  {
    long double ret1 = 0, ret2 = 0, a1[10], a2[10],
                b[10] = {0.0L, 1.0L, 2.0L, 3.0L, 4.0L,
                         5.0L, 6.0L, 7.0L, 8.0L, 9.0L};
    f1(a1, b, ret1, ret2, 10.0L);
    if (check_array(a1) || ret1 != 18.0L || ret2 != 0.0L) {
      ng_flag = 1;
      std::cout << "NG-f1 : long double : " << ret1 << " : " << ret2
                << std::endl;
    }
    f2(a2, b, ret1, ret2, 10.0L);
    if (check_array(a2) || ret1 != 18.0L || ret2 != 0.0L) {
      ng_flag = 1;
      std::cout << "NG-f2 : long double : " << ret1 << " : " << ret2
                << std::endl;
    }
  }
  if (ng_flag == 0) {
    std::cout << "OK" << std::endl;
  }
  return 0;
}
