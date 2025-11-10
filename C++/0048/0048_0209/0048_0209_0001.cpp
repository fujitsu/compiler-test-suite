#include <cstdio>
#include <functional>

static void func1(std::function<void()> on_complete)
{
  for (int i = 0; i < 10; ++i) {
    std::printf("%d\n", i);
  }

  on_complete();
}

void sub1()
{
  func1([] {
	  std::puts("OK");
	});
}
