#include <cassert>

namespace A::B::C {
    namespace A::B::C {
        int a = 1;
    }
}

namespace D::E::F {
using A::B::C::A::B::C::a;
}

int main() {
  assert(A::B::C::A::B::C::a == 1);
  A::B::C::A::B::C::a = 2;
  assert(D::E::F::a == 2);
  D::E::F::a = 3;
  assert(A::B::C::A::B::C::a == 3);
}
