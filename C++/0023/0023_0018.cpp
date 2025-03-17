#include <cassert>

inline namespace [[deprecated]] {
    namespace [[deprecated]] {
        inline namespace {
            inline namespace {
                int a = 1;
            }
        }
    }
}

void fun() { a = 3; }

namespace D {
int s = a;
}

int c = a;

int main() {
  assert(a = 1);
  assert(D::s == 1);
  assert(c == 1);

  a = 4;

  assert(D::s == 1);
  assert(c == 1);

  fun();

  assert(D::s == 1);
  assert(c == 1);
}
