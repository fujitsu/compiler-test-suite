#include <cstdio>

template <typename T> struct S {
  static const T value = 1;
};

template <typename T> int test_case(int c) {
  const int var = +(S<T>::value);
  int r;

  switch (c) {
  case var:
    r = 1;
    break;
  default:
    r = 0;
    break;
  }

  return r;
}

int test2_case() {
  int r;

  r = test_case<int>(1);

  return r;
}

template <typename T> int test_field(int c) {
  static const int var = +(S<T>::value);

  struct local_T {
    unsigned int mem : var;
  } obj = {(unsigned int)c};

  return obj.mem;
}

int test2_field() {
  int r;

  r = test_field<int>(1);

  return r;
}

template <typename T> int test_enum() {
  const int var = +(S<T>::value);

  enum local_T { mem = var };

  return mem;
}

int test2_enum() {
  int r;

  r = test_enum<int>();

  return r;
}

template <int b> int func1() { return b; }

template <typename T> int test_arg() {
  const int var = +(S<T>::value);
  int r;

  r = func1<var>();

  return r;
}

int test2_arg() {
  int r;

  r = test_arg<int>();

  return r;
}

int main() {
  printf("%d ", test2_case());
  printf("%d ", test2_field());
  printf("%d ", test2_enum());
  printf("%d ", test2_arg());

  printf("test ok\n");

  return 0;
}
