struct A {
  constexpr A(int i) : val(i) {}
  constexpr operator int() const { return val; }

private:
  int val;
};

template <int> struct X {};

void test1() {
  constexpr A a = 42;
  X<a> _x;
}

enum en {
  en_a = 1,
  en_b = 2,
};
struct B {
  constexpr B(int i) : val(i) {}
  constexpr operator enum en() const { return en_a; }

private : int val;
};
void test2() {
  constexpr B b = 42;
  X<b> _x;
}

void test() {
  test1();
  test2();
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
