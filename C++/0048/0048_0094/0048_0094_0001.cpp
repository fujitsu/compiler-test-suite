#include "000.hpp"

int g_val = 0;

extern "C" {
  void sub1()
  {
    [] () -> void { ++g_val; } ();
  }
  
  void sub2()
  {
    [] () throw() -> void { ++g_val; } ();
  }
  
  void sub3()
  {
    [] () noexcept -> void { ++g_val; } ();
  }
  
  void sub4()
  {
    [] () noexcept(true) -> void { ++g_val; } ();
  }
  
  void sub5()
  {
    [] () noexcept(false) -> void { ++g_val; } ();
  }
}

namespace NameSpace
{
  void sub6() throw()
  {
    [] () -> void { ++g_val; } ();
  }
  
  void sub7() throw()
  {
    [] () throw() -> void { ++g_val; } ();
  }
  
  void sub8() throw()
  {
    [] () noexcept -> void { ++g_val; } ();
  }
  
  void sub9() throw()
  {
    [] () noexcept(true) -> void { ++g_val; } ();
  }
  
  void sub10() throw()
  {
    [] () noexcept(false) -> void { ++g_val; } ();
  }
}

namespace OuterSpace
{
  namespace InnerSpace
  {
    void sub11() noexcept
    {
      [] () -> void { g_val += 2; } ();
    }
    
    void sub12() noexcept
    {
      [] () throw() -> void { g_val += 2; } ();
    }
    
    void sub13() noexcept
    {
      [] () noexcept -> void { g_val += 2; } ();
    }
    
    void sub14() noexcept
    {
      [] () noexcept(true) -> void { g_val += 2; } ();
    }
  
    void sub15() noexcept
    {
      [] () noexcept(false) -> void { g_val += 2; } ();
    }
  }
  
  inline namespace InlineSpace
  {
    void sub16() noexcept(true)
    {
      [] () -> void { g_val += 2; } ();
    }
    
  void sub17() noexcept(true)
    {
      [] () throw() -> void { g_val += 2; } ();
    }
    
    void sub18() noexcept(true)
    {
      [] () noexcept -> void { g_val += 2; } ();
    }
    
    void sub19() noexcept(true)
    {
      [] () noexcept(true) -> void { g_val += 2; } ();
    }
    
    void sub20() noexcept(true)
    {
      [] () noexcept(false) -> void { g_val += 2; } ();
    }
  
    namespace MostInnerSpace
    {
      void sub21() noexcept(false)
      {
	[] () -> void { g_val += 3; } ();
      }
      
      void sub22() noexcept(false)
      {
	[] () throw() -> void { g_val += 3; } ();
      }
      
      void sub23() noexcept(false)
      {
	[] () noexcept -> void { g_val += 3; } ();
      }
      
      void sub24() noexcept(false)
      {
	[] () noexcept(true) -> void { g_val += 3; } ();
      }
      
      void sub25() noexcept(false)
      {
	[] () noexcept(false) -> void { g_val += 3; } ();
      }
    }
  }
}
