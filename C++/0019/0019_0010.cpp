#include <cassert>

unsigned long long int operator""_km(unsigned long long int arg) { return arg; }

template <class T1, class T2> struct is_same {
  static const bool value = false;
};

template <class T> struct is_same<T, T> {
  static const bool value = true;
};

is_same<unsigned long long int, decltype(0b1111_km)> type;

void test() {
  assert(0b1111_km == 15ull);
  assert(type.value);
}

int main() {
  test();
  return 0;
}
