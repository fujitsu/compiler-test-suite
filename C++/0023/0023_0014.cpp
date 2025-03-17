#include <cassert>

namespace A::B {
    namespace B::C::D {
        namespace C::D::E {
            namespace E::F {
                int a = 1;
            }
        }
    }
}

int main() {
  assert(A::B::B::C::D::C::D::E::E::F::a == 1);
  A::B::B::C::D::C::D::E::E::F::a = 2;
  using A::B::B::C::D::C::D::E::E::F::a;
  assert(a == 2);
  a = 3;
  assert(A::B::B::C::D::C::D::E::E::F::a == 3);
}
