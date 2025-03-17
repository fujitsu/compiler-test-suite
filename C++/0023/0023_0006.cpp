#include <cassert>
#include <initializer_list>
#include <typeinfo>

decltype(auto) fun() {
  int a = 1;
  return void();
}

decltype(auto) fun1() {
  int a = 1;
  return;
}

decltype(auto) fun2() { int a = 1; }

int main() {
  assert(typeid(fun()) == typeid(void));

  assert(typeid(fun1()) == typeid(void));

  assert(typeid(fun2()) == typeid(void));
}
