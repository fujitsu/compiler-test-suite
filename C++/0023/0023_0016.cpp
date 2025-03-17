#include <cassert>

namespace A::B::C {
    namespace A::B::C {
        namespace D::E::F {
            int a = 1;
        }
    }
}

void fun() {
  using A::B::C::A::B::C::D::E::F::a;
  if (a == 1) {
    assert(a == 1);
    a = 2;
  }
  if (a == 3) {
    assert(a == 3);
  }
}

int main() {
  fun();
  assert(A::B::C::A::B::C::D::E::F::a == 2);
  using A::B::C::A::B::C::D::E::F::a;
  a = 3;
  fun();
  assert(A::B::C::A::B::C::D::E::F::a == 3);
}
