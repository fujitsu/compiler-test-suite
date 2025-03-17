#include <cassert>
#include <type_traits>

void test() {
  constexpr int y = 1;
  constexpr decltype(auto) x = y;
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
