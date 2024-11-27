module mod01
 interface
  function mifunc01() result(mirst01)
   character(4) :: mirst01
  end function
  function mifunc02(dfunc01) result(mirst01)
   interface
    function dfunc01() result(drst01)
     character(4) :: drst01
    end function
   end interface
   procedure(dfunc01), pointer :: mirst01
  end function
 end interface
 procedure(mifunc01) :: pmifunc01
 procedure(mifunc02) :: pmifunc02
 procedure(m1func01) :: pm1func01
 procedure(m1func02) :: pm1func02
 contains
  function m1func01() result(m1rst01)
   character(4) :: m1rst01
  end function
  function m1func02(dfunc01) result(m1rst01)
   interface
    function dfunc01() result(drst01)
     character(4) :: drst01
    end function
   end interface
   procedure(dfunc01), pointer :: m1rst01
  end function
end module

use mod01

procedure(mifunc01), pointer :: pmifuncp01
procedure(mifunc02), pointer :: pmifuncp02
procedure(m1func01), pointer :: pm1funcp01
procedure(m1func02), pointer :: pm1funcp02

pmifuncp01 => pmifuncp02(pmifunc01)
pm1funcp01 => pm1funcp02(pm1func01)

if (pmifuncp01().ne.pm1funcp01()) print *,'not pass'

print *,'pass'

end

function dfunc01() result(drst01)
 character(4) :: drst01
 drst01 = 'pass'
end function

function mifunc01() result(mirst01)
 character(4) :: mirst01
 mirst01 = 'pass'
end function

function mifunc02(dfunc01) result(mirst01)
 interface
  function dfunc01() result(drst01)
   character(4) :: drst01
  end function
 end interface
 procedure(dfunc01), pointer :: mirst01
 mirst01 => dfunc01
end function

function pmifunc01() result(mirst01)
 character(4) :: mirst01
 mirst01 = 'pass'
end function

function pmifunc02(dfunc01) result(mirst01)
 interface
  function dfunc01() result(drst01)
   character(4) :: drst01
  end function
 end interface
 procedure(dfunc01), pointer :: mirst01
 mirst01 => dfunc01
end function

function pm1func01() result(m1rst01)
 character(4) :: m1rst01
 m1rst01 = 'pass'
end function

function pm1func02(dfunc01) result(m1rst01)
 interface
  function dfunc01() result(drst01)
   character(4) :: drst01
  end function
 end interface
 procedure(dfunc01), pointer :: m1rst01
 m1rst01 => dfunc01
end function
