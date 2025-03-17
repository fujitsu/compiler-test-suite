#include <cassert>
#include <type_traits>

void test1() {
  auto x1 = []() {};
  assert(true == (std::is_void<decltype(x1())>::value));

  auto x2 = []() { return; };
  assert(true == std::is_void<decltype(x2())>::value);

  auto x3 = []() { return 1; };
  assert(true == (std::is_same<int, decltype(x3())>::value));

  auto x4 = []() {
    if (true)
      return 1;
    return 2;
  };
  assert(true == (std::is_same<int, decltype(x4())>::value));
}

void test2() {
  auto x1 = []() -> decltype(auto) {};
  assert(true == (std::is_void<decltype(x1())>::value));

  auto x2 = []() -> decltype(auto) { return; };
  assert(true == std::is_void<decltype(x2())>::value);

  auto x3 = []() -> decltype(auto) { return 1; };
  assert(true == (std::is_same<int, decltype(x3())>::value));

  auto x4 = []() -> decltype(auto) {
    if (true)
      return 1;
    return 2;
  };
  assert(true == (std::is_same<int, decltype(x4())>::value));
}

void test3() {
  auto x1 = []() -> auto{};
  assert(true == (std::is_void<decltype(x1())>::value));

  auto x2 = []() -> auto{ return; };
  assert(true == std::is_void<decltype(x2())>::value);

  auto x3 = []() -> auto{ return 1; };
  assert(true == (std::is_same<int, decltype(x3())>::value));

  auto x4 = []() -> auto{
    if (true)
      return 1;
    return 2;
  };
  assert(true == (std::is_same<int, decltype(x4())>::value));
}

void test4() {
  auto x1 = []() -> int {};
  assert(true == (std::is_same<int, decltype(x1())>::value));

  auto x2 = []() -> bool {};
  assert(true == (std::is_same<bool, decltype(x2())>::value));
}

void test() {
  test1();
  test2();
  test3();
  test4();
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
