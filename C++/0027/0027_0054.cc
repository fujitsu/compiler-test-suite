#include <cstdarg>
#include <iostream>

void f1(int val, ...) { std::cout << "f1" << std::endl; }

static void f2(int val, ...) { std::cout << "f2" << std::endl; }

void f3(int val, ...) {}

static void f4(int val, ...) {}

void f5(int val, ...) {
  va_list ap;
  va_start(ap, val);
}

static void f6(int val, ...) {
  va_list ap;
  va_start(ap, val);
}

namespace local_space {
void f1(int val, ...) { std::cout << "local f1" << std::endl; }

static void f2(int val, ...) { std::cout << "local f2" << std::endl; }

void f3(int val, ...) {}

static void f4(int val, ...) {}

void f5(int val, ...) {
  va_list ap;
  va_start(ap, val);
}

static void f6(int val, ...) {
  va_list ap;
  va_start(ap, val);
}
}

int main() {
  f1(1);
  f2(2);
  f3(3);
  f4(4);
  f5(5);
  f6(6);
  local_space::f1(1);
  local_space::f2(2);
  local_space::f3(3);
  local_space::f4(4);
  local_space::f5(5);
  local_space::f6(6);
  return 0;
}
