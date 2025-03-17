constexpr void goo() {}

int x = 1, y = 2;

constexpr int foo(int n = 0) {

  struct X {
    constexpr X() {}
    constexpr void foo() {}
  } x;
  int m = n;

  {
    goo();
    x.foo();
  }

  if (n < 0)
    return n;
  switch (n) {
  case 1:
    m = n + 1;
    break;
  default:
    break;
  }

  while (n--) {
    m++;
  }
  do {
    m++;
  } while (n++ < 10);
  for (int i = 0; i < n; ++i) {
    ++m;
    continue;
  }

  return 0;
}

int test() {
  const int n = foo();
  return n;
}

int main() { test(); }
