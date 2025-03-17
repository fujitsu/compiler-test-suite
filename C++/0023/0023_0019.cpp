#include <cassert>

namespace A::B::C {
    inline namespace [[deprecated]] B {
        namespace C::B {
            inline namespace A {
                namespace [[deprecated]] {
                    int a = 1;
                }
            }
        }
    }
}

void fun() {
  using A::B::C::B::C::B::A::a;
  assert(A::B::C::B::C::B::A::a == 3);
  a = 2;
}

namespace D {
using A::B::C::B::C::B::A::a;
}

int main() {
  assert(A::B::C::B::C::B::A::a == 1);
  assert(D::a == 1);

  using A::B::C::B::C::B::A::a;
  a = 3;
  assert(A::B::C::B::C::B::A::a == 3);
  assert(D::a == 3);

  fun();
  assert(A::B::C::B::C::B::A::a == 2);
  assert(D::a == 2);
}
