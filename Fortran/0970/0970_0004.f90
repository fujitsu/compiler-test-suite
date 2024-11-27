interface
 function ifunc() result(rst)
  integer :: rst
 end function
end interface

type ty01
 sequence
 procedure (ifunc), pointer, nopass :: pr_pn01
end type

type (ty01) :: t01

t01 = cfunc01()

call csub01(t01)

contains
 function cfunc() result(rst)
  integer :: rst
  rst = 1
 end function
 function cfunc01() result(crst01)
  type ty01
   sequence
   procedure (cfunc), pointer, nopass :: pr_pn01
  end type
  type (ty01) :: crst01
  crst01 = ty01(ifunc)
 end function
 subroutine csub01(cs01_arg01)
  type ty01
   sequence
   procedure (cfunc), pointer, nopass :: pr_pn01
  end type
  type (ty01) :: cs01_arg01
 end subroutine
end

function ifunc() result(rst)
 integer :: rst
 rst = 1
end function
