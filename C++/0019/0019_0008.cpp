#include <cassert>

class A {
public:
  A() : val(0) {}
  A(int _val) : val(_val) {}

  operator int &() { return val; }
  operator int() const { return val; }

private:
  int val;
};

enum en {
  en_a = 1,
  en_b = 2,
};
struct B {
  constexpr B(int i) : val(i) {}
  constexpr operator enum en() const { return en_a; }

private : int val;
};

void test1() {
  A i;
  i = 7;
  switch (i) {
  case 7:
    break;
  default:
    assert(0);
  }
}

void test2() {
  B i(2);
  switch (i) {
  case en_a:
    break;
  default:
    assert(0);
  }
}

void test() {
  test1();
  test2();
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
