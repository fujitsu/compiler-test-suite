#include <cassert>

namespace {
    int a = 1;
}

class D {
public:
  int mem = a;
};

int main() {
  D d;
  assert(d.mem = a);
}
