#include <cassert>
#include <initializer_list>
#include <typeinfo>

const auto fun() {
  int a = 1;
  return void();
}

auto fun1() {
  int a = 1;
  return;
}

volatile auto fun2() { int a = 1; }

int main() {
  assert(typeid(fun()) == typeid(void));

  assert(typeid(fun1()) == typeid(void));

  assert(typeid(fun2()) == typeid(void));
}
