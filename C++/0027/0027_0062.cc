#include <cstdarg>
#include <iostream>

template <class T> void inline f1(T val, ...) {
  std::cout << "f1" << std::endl;
}

template <class T> static void inline f2(T val, ...) {
  std::cout << "f2" << std::endl;
}

template <class T> void inline f3(T val, ...) {}

template <class T> static void inline f4(T val, ...) {}

template <class T> void inline f5(T val, ...) {
  va_list ap;
  va_start(ap, val);
}

template <class T> static void inline f6(T val, ...) {
  va_list ap;
  va_start(ap, val);
}

template <class T> void inline f7(T val, ...) {
  T wi;
  va_list ap;
  va_start(ap, val);
  wi = va_arg(ap, T);
  std::cout << wi << std::endl;
}

template <class T> static void inline f8(T val, ...) {
  T wi;
  va_list ap;
  va_start(ap, val);
  wi = va_arg(ap, T);
  std::cout << wi << std::endl;
}

namespace local_space {
template <class T> void inline f1(T val, ...) {
  std::cout << "local f1" << std::endl;
}

template <class T> static void inline f2(T val, ...) {
  std::cout << "local f2" << std::endl;
}

template <class T> void inline f3(T val, ...) {}

template <class T> static void inline f4(T val, ...) {}

template <class T> void inline f5(T val, ...) {
  va_list ap;
  va_start(ap, val);
}

template <class T> static void inline f6(T val, ...) {
  va_list ap;
  va_start(ap, val);
}

template <class T> void inline f7(T val, ...) {
  T wi;
  va_list ap;
  va_start(ap, val);
  wi = va_arg(ap, T);
  std::cout << wi << std::endl;
}

template <class T> static void inline f8(T val, ...) {
  T wi;
  va_list ap;
  va_start(ap, val);
  wi = va_arg(ap, T);
  std::cout << wi << std::endl;
}
}

int main() {
  f1(1.0);
  f2(2.0F);
  f3(3.0L);
  f4(4ULL);
  f5(5LL);
  f6(6U);
  f7(7L, 7L);
  f8(8, 8);
  local_space::f1(1.0L);
  local_space::f2(2.0);
  local_space::f3(3.0F);
  local_space::f4(4LL);
  local_space::f5(5ULL);
  local_space::f6(6L);
  local_space::f7(7U, 7U);
  local_space::f8(8.0, 8.0);
  return 0;
}
