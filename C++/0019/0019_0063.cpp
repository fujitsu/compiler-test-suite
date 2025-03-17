#include <cassert>

template <class T> T vt = T(123);

namespace outer {

template <class T> T vt = T(456);

namespace inner {
template <class T> T vt = T(789);
}
}

template int vt<int>;

template int outer::vt<int>;

extern template double outer::vt<double>;

template int outer::inner::vt<int>;

void test() {
  assert((vt<int> == 123));
  assert((outer::vt<int> == 456));
  assert((outer::inner::vt<int> == 789));
}

int main() { test(); }
