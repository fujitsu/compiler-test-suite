module mod1
 contains
  function m01_func01() result(m01_rst01)
   type ty01
    integer :: i = 1
   end type
   type (ty01) :: m01_rst01
   m01_rst01 = ty01()
  end function
  function m01_func02() result(m01_rst02)
   type ty01
    integer :: i = 2
   end type
   type (ty01) :: m01_rst02
   m01_rst02 = ty01()
  end function
end

use mod1

print *,same_type_as(m01_func01(), m01_func02())
print *,same_type_as(cfunc01(),    cfunc02())

contains
 function cfunc01() result(crst01)
  type ty01
   integer :: i = 3
  end type
  type (ty01) :: crst01
  crst01 = ty01()
 end function
 function cfunc02() result(crst02)
  type ty01
   integer :: i = 4
  end type
  type (ty01) :: crst02
  crst02 = ty01()
 end function
end
