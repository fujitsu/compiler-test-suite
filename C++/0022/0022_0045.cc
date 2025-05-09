#include <cstdio>

int test_case(int c) {
  const int var = -(-1);
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

  r = test_case(1);

  return r;
}

int test_field(int c) {
  static const int var = -(-1);

  struct local_T {
    unsigned int mem : var;
  } obj = {(unsigned int)c};

  return obj.mem;
}

int test2_field() {
  int r;

  r = test_field(1);

  return r;
}

int test_enum() {
  const int var = -(-1);

  enum local_T { mem = var };

  return mem;
}

int test2_enum() {
  int r;

  r = test_enum();

  return r;
}

template <int b> int func1() { return b; }

int test_arg() {
  const int var = -(-1);
  int r;

  r = func1<var>();

  return r;
}

int test2_arg() {
  int r;

  r = test_arg();

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
