i = m1func00()

contains

  function m1func00() result(m1rst00)
   procedure(m1funcA01), pointer :: pm1funcA01p01
   procedure(m1funcB01), pointer :: pm1funcB01p01
   integer :: m1rst00
   pm1funcA01p01 => pm1funcB01p01
   m1rst00 = 1
  end function

  function m1funcA01() result(m1rstA01)
   procedure(m1funcA02), pointer :: m1rstA01
  end function

  function m1funcA02() result(m1rstA02)
   procedure(m1funcA03), pointer :: m1rstA02
  end function

  function m1funcA03() result(m1rstA03)
   procedure(m1funcA04), pointer :: m1rstA03
  end function

  function m1funcA04() result(m1rstA04)
   procedure(m1funcA05), pointer :: m1rstA04
  end function

  function m1funcA05() result(m1rstA05)
   procedure(), pointer :: m1rstA05
  end function

  function m1funcB01() result(m1rstB01)
   procedure(m1funcB02), pointer :: m1rstB01
  end function

  function m1funcB02() result(m1rstB02)
   procedure(m1funcB03), pointer :: m1rstB02
  end function

  function m1funcB03() result(m1rstB03)
   procedure(m1funcB04), pointer :: m1rstB03
  end function

  function m1funcB04() result(m1rstB04)
   procedure(m1funcB05), pointer :: m1rstB04
  end function

  function m1funcB05() result(m1rstB05)
   procedure(integer), pointer :: m1rstB05
  end function

end
