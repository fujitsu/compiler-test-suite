struct A {
  bool a[2] = {true, false};
  int b[2]{1, 2};
};

struct B {
  char a : 4;
  char b : 4;
  int : 0;
  int c : 4;
};

union C {
  int x;
  double y = 2.0;
};

void test() {
  A a;
  B b;
  C c;
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
