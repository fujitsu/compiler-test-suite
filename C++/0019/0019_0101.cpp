namespace case4 {
[[deprecated]] void foo();
[[deprecated]] void foo();

void foo() {}

void test() { foo(); }
}

void test() { case4::test(); }

int main() {
  test();
  return 0;
}
