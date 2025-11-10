#include "000.hpp"

int g_val = 0;

void sub1()
{
  ++g_val;
}

void sub2() throw()
{
  ++g_val;
}

void sub3() noexcept
{
  ++g_val;
}

void sub4() noexcept(true)
{
  ++g_val;
}

void sub5() noexcept(false)
{
  ++g_val;
}

void Foo::sub1()
{
  ++m_val;
}

void Foo::sub2() throw()
{
  ++m_val;
}

void Foo::sub3() noexcept
{
  ++m_val;
}

void Foo::sub4() noexcept(true)
{
  ++m_val;
}

void Foo::sub5() noexcept(false)
{
  ++m_val;
}
