#include <cstdio>

template <int v, typename T = void> struct operand {
  typedef T type;
};

template <int v> struct op {
  static const int value = v;
  op() {}

#if defined(__cplusplus) && __cplusplus >= 201103L
  template <int v2>
  op(const op<v2>, typename operand<(value >> op<v2>::value)>::type * = 0) {}
#else
  template <int v2>
  op(const op<v2>, typename operand < value >> op<v2>::value > ::type * = 0) {}
#endif
};

int func(op<3> s) { return s.value; }

int test() {
  op<6> r;

  return (func(r) == 3);
}

int main() {
  printf("%d ", test());

  printf("test ok\n");

  return 0;
}
