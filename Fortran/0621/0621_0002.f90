
module mod01
 contains
  function m01_func01() result(m01_rst01)
   procedure(idim), pointer :: m01_rst01
   m01_rst01 => idim
  end function
  function m01_func02() result(m01_rst02)
   procedure(iabs), pointer :: m01_rst02
   m01_rst02 => iabs
  end function
end module

interface
 function ifunc01() result(irst01)
  type ty01
   sequence
   procedure(idim), pointer, nopass :: pr_pn01
  end type
  procedure(type(ty01)), pointer :: irst01
 end function

 function ifunc02() result(irst02)
  use mod01 , m01_func => m01_func01
  type ty02
   sequence
   procedure(m01_func), pointer, nopass :: pr_pn01
  end type
  procedure(type(ty02)), pointer :: irst02
 end function

end interface

print *,'pass'

end

function ifunc01() result(irst01)
 type ty01
  sequence
  procedure(idim), pointer, nopass :: pr_pn01
 end type
 procedure(type(ty01)), pointer :: irst01
 irst01 => null()
end function

function ifunc02() result(irst02)
 use mod01 , m01_func => m01_func01
 type ty02
  sequence
  procedure(m01_func), pointer, nopass :: pr_pn01
 end type
 procedure(type(ty02)), pointer :: irst02
 irst02 => null()
end function
