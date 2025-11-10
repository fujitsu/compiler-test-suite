#include "000.hpp"

int g_val = 0;

void sub1()
{
  auto f = [&] () -> void { ++g_val; };
  f();
}

void sub2() throw()
{
  auto f = [&] () -> void { ++g_val; };
  f();
}

void sub3() noexcept
{
  auto f = [&] () -> void { ++g_val; };
  f();
}

void sub4() noexcept(true)
{
  auto f = [&] () -> void { ++g_val; };
  f();
}

void sub5() noexcept(false)
{
  auto f = [&] () -> void { ++g_val; };
  f();
}
