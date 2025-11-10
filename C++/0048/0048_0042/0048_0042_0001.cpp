#include <cstdio>

void sub1()
{
  [] () -> void {
    std::puts("OK 1");
  } ();

  auto f = [] () -> void {
    std::puts("OK 2");
  };
  f();
}
