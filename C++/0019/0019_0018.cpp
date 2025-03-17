#include <cassert>
#include <type_traits>

void test() {
  decltype(auto) x = 5, y = x;
  assert(x == 5);
  assert(true == (std::is_same<int, decltype(x)>::value));
  assert(y == 5);
  assert(true == (std::is_same<int, decltype(y)>::value));
  assert(true == (std::is_same<decltype(x), decltype(y)>::value));
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
