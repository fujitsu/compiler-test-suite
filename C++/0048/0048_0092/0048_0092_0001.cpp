#include "000.hpp"

int g_val = 0;

void InlineSpace::sub1()
{
  [] () -> void { ++g_val; } ();
}

void InlineSpace::sub2()
{
  [] () throw() -> void { ++g_val; } ();
}

void InlineSpace::sub3()
{
  [] () noexcept -> void { ++g_val; } ();
}

void InlineSpace::sub4()
{
  [] () noexcept(true) -> void { ++g_val; } ();
}

void InlineSpace::sub5()
{
  [] () noexcept(false) -> void { ++g_val; } ();
}

void InlineSpace::sub6() throw()
{
  [] () -> void { ++g_val; } ();
}

void InlineSpace::sub7() throw()
{
  [] () throw() -> void { ++g_val; } ();
}

void InlineSpace::sub8() throw()
{
  [] () noexcept -> void { ++g_val; } ();
}

void InlineSpace::sub9() throw()
{
  [] () noexcept(true) -> void { ++g_val; } ();
}

void InlineSpace::sub10() throw()
{
  [] () noexcept(false) -> void { ++g_val; } ();
}

void InlineSpace::sub11() noexcept
{
  [] () -> void { g_val += 2; } ();
}

void InlineSpace::sub12() noexcept
{
  [] () throw() -> void { g_val += 2; } ();
}

void InlineSpace::sub13() noexcept
{
  [] () noexcept -> void { g_val += 2; } ();
}

void InlineSpace::sub14() noexcept
{
  [] () noexcept(true) -> void { g_val += 2; } ();
}

void InlineSpace::sub15() noexcept
{
  [] () noexcept(false) -> void { g_val += 2; } ();
}

void InlineSpace::sub16() noexcept(true)
{
  [] () -> void { g_val += 2; } ();
}

void InlineSpace::sub17() noexcept(true)
{
  [] () throw() -> void { g_val += 2; } ();
}

void InlineSpace::sub18() noexcept(true)
{
  [] () noexcept -> void { g_val += 2; } ();
}

void InlineSpace::sub19() noexcept(true)
{
  [] () noexcept(true) -> void { g_val += 2; } ();
}

void InlineSpace::sub20() noexcept(true)
{
  [] () noexcept(false) -> void { g_val += 2; } ();
}

void InlineSpace::sub21() noexcept(false)
{
  [] () -> void { g_val += 3; } ();
}

void InlineSpace::sub22() noexcept(false)
{
  [] () throw() -> void { g_val += 3; } ();
}

void InlineSpace::sub23() noexcept(false)
{
  [] () noexcept -> void { g_val += 3; } ();
}

void InlineSpace::sub24() noexcept(false)
{
  [] () noexcept(true) -> void { g_val += 3; } ();
}

void InlineSpace::sub25() noexcept(false)
{
  [] () noexcept(false) -> void { g_val += 3; } ();
}
