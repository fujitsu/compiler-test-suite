#include <cassert>

namespace A::B::C {
int a = 1;
}

int main() {
  assert(A::B::C::a == 1);
  using A::B::C::a;
  a = 2;
  assert(A::B::C::a == 2);
}
