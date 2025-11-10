#include <cstdio>

template <typename F>
auto call(F func) -> decltype(func())
{
  return func();
}

int func() { return 1; }

void sub1()
{
  auto ret1 = call(func);
  auto ret2 = call((int(*)())([] () { return 2; }));
  auto ret3 = call([] () { return 3; });

  if ((ret1 + ret2 + ret3) == 6) {
    std::puts("OK");
  }
  else {
    std::puts("NG");
  }
}
