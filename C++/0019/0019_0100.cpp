namespace case1 {
[[deprecated]] void foo();
[[deprecated("I'm deprecated")]] void foo();

void foo() {}

void test() { foo(); }
}

namespace case2 {
[[deprecated("I'm deprecated")]] void foo();
[[deprecated]] void foo();

void foo() {}

void test() { foo(); }
}

namespace case3 {
[[deprecated("I'm deprecated")]] void foo();
[[deprecated("I'm deprecated")]] void foo();

void foo() {}

void test() { foo(); }
}

void test() {
  case1::test();
  case2::test();
  case3::test();
}

int main() { test(); }
