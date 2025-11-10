#include "000.hpp"

void InlineSpace::Foo::sub1()
{
  [&] () -> void { ++m_val; } ();
}

void InlineSpace::Foo::sub2()
{
  [&] () throw() -> void { ++m_val; } ();
}

void InlineSpace::Foo::sub3()
{
  [&] () noexcept -> void { ++m_val; } ();
}

void InlineSpace::Foo::sub4()
{
  [&] () noexcept(true) -> void { ++m_val; } ();
}

void InlineSpace::Foo::sub5()
{
  [&] () noexcept(false) -> void { ++m_val; } ();
}

void InlineSpace::Foo::sub6() throw()
{
  [&] () -> void { ++m_val; } ();
}

void InlineSpace::Foo::sub7() throw()
{
  [&] () throw() -> void { ++m_val; } ();
}

void InlineSpace::Foo::sub8() throw()
{
  [&] () noexcept -> void { ++m_val; } ();
}

void InlineSpace::Foo::sub9() throw()
{
  [&] () noexcept(true) -> void { ++m_val; } ();
}

void InlineSpace::Foo::sub10() throw()
{
  [&] () noexcept(false) -> void { ++m_val; } ();
}

void InlineSpace::Foo::sub11() noexcept
{
  [&] () -> void { m_val += 2; } ();
}

void InlineSpace::Foo::sub12() noexcept
{
  [&] () throw() -> void { m_val += 2; } ();
}

void InlineSpace::Foo::sub13() noexcept
{
  [&] () noexcept -> void { m_val += 2; } ();
}

void InlineSpace::Foo::sub14() noexcept
{
  [&] () noexcept(true) -> void { m_val += 2; } ();
}

void InlineSpace::Foo::sub15() noexcept
{
  [&] () noexcept(false) -> void { m_val += 2; } ();
}

void InlineSpace::Foo::sub16() noexcept(true)
{
  [&] () -> void { m_val += 2; } ();
}

void InlineSpace::Foo::sub17() noexcept(true)
{
  [&] () throw() -> void { m_val += 2; } ();
}

void InlineSpace::Foo::sub18() noexcept(true)
{
  [&] () noexcept -> void { m_val += 2; } ();
}

void InlineSpace::Foo::sub19() noexcept(true)
{
  [&] () noexcept(true) -> void { m_val += 2; } ();
}

void InlineSpace::Foo::sub20() noexcept(true)
{
  [&] () noexcept(false) -> void { m_val += 2; } ();
}

void InlineSpace::Foo::sub21() noexcept(false)
{
  [&] () -> void { m_val += 3; } ();
}

void InlineSpace::Foo::sub22() noexcept(false)
{
  [&] () throw() -> void { m_val += 3; } ();
}

void InlineSpace::Foo::sub23() noexcept(false)
{
  [&] () noexcept -> void { m_val += 3; } ();
}

void InlineSpace::Foo::sub24() noexcept(false)
{
  [&] () noexcept(true) -> void { m_val += 3; } ();
}

void InlineSpace::Foo::sub25() noexcept(false)
{
  [&] () noexcept(false) -> void { m_val += 3; } ();
}
