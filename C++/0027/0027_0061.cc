#include <cstdarg>
#include <iostream>

void inline f1(int val, ...) { std::cout << "f1" << std::endl; }

static void inline f2(int val, ...) { std::cout << "f2" << std::endl; }

void inline f3(int val, ...) {}

static void inline f4(int val, ...) {}

void inline f5(int val, ...) {
  va_list ap;
  va_start(ap, val);
}

static void inline f6(int val, ...) {
  va_list ap;
  va_start(ap, val);
}

void inline f7(int val, ...) {
  int wi;
  va_list ap;
  va_start(ap, val);
  wi = va_arg(ap, int);
  std::cout << wi << std::endl;
}

static void inline f8(int val, ...) {
  int wi;
  va_list ap;
  va_start(ap, val);
  wi = va_arg(ap, int);
  std::cout << wi << std::endl;
}

namespace local_space {
void inline f1(int val, ...) { std::cout << "local f1" << std::endl; }

static void inline f2(int val, ...) { std::cout << "local f2" << std::endl; }

void inline f3(int val, ...) {}

static void inline f4(int val, ...) {}

void inline f5(int val, ...) {
  va_list ap;
  va_start(ap, val);
}

static void inline f6(int val, ...) {
  va_list ap;
  va_start(ap, val);
}

void inline f7(int val, ...) {
  int wi;
  va_list ap;
  va_start(ap, val);
  wi = va_arg(ap, int);
  std::cout << wi << std::endl;
}

static void inline f8(int val, ...) {
  int wi;
  va_list ap;
  va_start(ap, val);
  wi = va_arg(ap, int);
  std::cout << wi << std::endl;
}
}

int main() {
  f1(1);
  f2(2);
  f3(3);
  f4(4);
  f5(5);
  f6(6);
  f7(7, 7);
  f8(8, 8);
  local_space::f1(1);
  local_space::f2(2);
  local_space::f3(3);
  local_space::f4(4);
  local_space::f5(5);
  local_space::f6(6);
  local_space::f7(7, 7);
  local_space::f8(8, 8);
  return 0;
}
