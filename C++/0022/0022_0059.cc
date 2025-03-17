typedef char (&no_tag)[1];
typedef char (&yes_tag)[2];

class dummy {};
template <typename T> struct has_xxx {
  template <class C1, class C2, template <typename V0> class V>
  struct has_xxx0 {};
  template <class C1, class C2, template <typename V0, typename V1> class V>
  struct has_xxx1 {};
  template <typename V> static no_tag has_xxx_fn(...);
  template <typename V>
  static yes_tag has_xxx_fn(void *,
                            has_xxx0<dummy, dummy, V::template xxx> * = 0);
  template <typename V>
  static yes_tag has_xxx_fn(void *,
                            has_xxx1<dummy, dummy, V::template xxx> * = 0);
  static const bool value = sizeof(has_xxx_fn<T>(0)) == sizeof(yes_tag);
};
struct x {
  template <typename T> struct xxx {};
};
bool b = has_xxx<x>::value;

#include <cstdio>

int main() {
  printf("test ok\n");

  return 0;
}
