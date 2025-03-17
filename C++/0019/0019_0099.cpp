namespace case1 {
void foo();

void goo() { foo(); }

[[deprecated]] void foo();
[[deprecated]] void foo();
void foo();

void foo() {}

void test() { foo(); }
}

namespace case2 {
[[deprecated]] void foo();

void goo() { foo(); }

void foo();

void foo() {}

void test() { foo(); }
}

void test() {
  case1::test();
  case2::test();
}

int main() { test(); }
