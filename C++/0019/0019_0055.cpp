#include <cassert>

struct limits {
  template <class T> static const T min;
};

template <class T> const T limits::min = {};

void test() {
  assert(limits::min<int> == 0);
  assert(limits::min<double> == 0.);
}

int main() { test(); }
