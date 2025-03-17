#include <cassert>

inline namespace [[deprecated]] A {
    namespace [[deprecated]] B {
        inline namespace C {
            inline namespace A {
                int a = 1;
            }
        }
    }
}

void fun() {
  using A::B::C::A::a;
  a = 3;
}

namespace D {
using A::B::C::A::a;
}

using A::B::C::A::a;
int c = a;

int main() {
  assert(A::B::C::A::a == 1);
  assert(c == 1);
  assert(D::a == 1);

  a = 7;
  assert(c == 1);
  assert(A::B::C::A::a == 7);
  assert(D::a == 7);

  using A::B::C::A::a;
  a = 4;
  assert(a == 4);
  assert(c == 1);
  assert(A::B::C::A::a == 4);
  assert(D::a == 4);

  fun();
  assert(a == 3);
  assert(c == 1);
  assert(A::B::C::A::a == 3);
  assert(D::a == 3);
}
