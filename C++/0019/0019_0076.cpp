#include <cassert>
int flag = 0;

template <class T> T vt = T();

struct X {
  template <class T> static T dt;

  void foo() const { flag++; }
};

template <class T> T X::dt = T();

void test() {
  vt<X>.foo();
  assert(flag == 1);

  X::dt<X>.foo();
  assert(flag == 2);
}

int main() { test(); }
