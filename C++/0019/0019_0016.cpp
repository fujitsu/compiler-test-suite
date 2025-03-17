#include <cassert>
#include <type_traits>

int &&f() { return 2; }

void test() {
  int i;
  decltype(auto) x3d = i;
  assert(true == (std::is_same<int, decltype(x3d)>::value));

  decltype(auto) x4d = (i);
  assert(true == (std::is_same<int &, decltype(x4d)>::value));

  decltype(auto) x5d = f();
  assert(true == (std::is_same<int &&, decltype(x5d)>::value));
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
