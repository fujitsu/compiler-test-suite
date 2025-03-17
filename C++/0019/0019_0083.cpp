constexpr void goo() {}

struct X {
  constexpr X(int n = 0) {

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
      m += 1;
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
  }
};

void test() {}

int main() { test(); }
