#include <cstdio>
#include <utility>
#include <iostream>

static void func1(int i,
		  char c,
		  float f)
{
  std::printf("%d ", i);
  std::printf("%c ", c);
  std::printf("%1.2f\n", f);
}

template <class... Args>
static void variadic_func1(Args... args)
{
  func1(args...);
}

static void variadic_func2()
{
  std::puts("");
}

template <class Head, class... Tail>
static void variadic_func2(Head&& head,
			   Tail&&... tail)
{
  std::cout << head << " ";
  variadic_func2(std::move(tail)...);
}

void sub1()
{
  variadic_func1(3, '1', 3.14);
  variadic_func2(3, '1', 3.14);
}
