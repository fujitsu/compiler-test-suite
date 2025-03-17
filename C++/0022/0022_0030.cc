#include <cstdio>

template <typename T> struct S {
  static const T value = true;
};

template <typename T> bool test_case(int c) {
  const bool var = (S<T>::value);
  bool r;

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

bool test2_case() {
  bool r;

  r = test_case<bool>(1);

  return r;
}

template <typename T> int test_field(int c) {
  static const bool var = (S<T>::value);

  struct local_T {
    unsigned int mem : var;
  } obj = {(unsigned int)c};

  return obj.mem;
}

bool test2_field() {
  int r;

  r = test_field<bool>(1);

  return r;
}

template <typename T> int test_enum() {
  const bool var = (S<T>::value);

  enum local_T { mem = var };

  return mem;
}

int test2_enum() {
  int r;

  r = test_enum<bool>();

  return r;
}

template <bool b> bool func1() { return b; }

template <typename T> bool test_arg() {
  const bool var = (S<T>::value);
  bool r;

  r = func1<var>();

  return r;
}

bool test2_arg() {
  bool r;

  r = test_arg<bool>();

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
