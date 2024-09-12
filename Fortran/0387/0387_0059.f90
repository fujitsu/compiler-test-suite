module mod1
 contains
  function func1() result(rst1)
   integer              :: rst1
   rst1 = 1
  end function
  function func2() result(rst2)
   integer, pointer     :: rst2
   rst2 => null()
  end function
  function func3() result(rst3)
   integer, allocatable :: rst3
   allocate(rst3)
  end function
end module

module mod2
 contains
  function func1() result(rst1)
   integer              :: rst1
   rst1 = 1
  end function
  function func2() result(rst2)
   integer, pointer     :: rst2
   rst2 => null()
  end function
  function func3() result(rst3)
   integer, allocatable :: rst3
   allocate(rst3)
  end function
end module

use mod1

type ty1
 sequence
 procedure(func1), pointer, nopass :: pp1
end type

type ty2
 sequence
 procedure(func2), pointer, nopass :: pp2
end type

type ty3
 sequence
 procedure(func3), pointer, nopass :: pp3
end type

type (ty1) :: tt1
type (ty2) :: tt2
type (ty3) :: tt3

call csub1(tt1)
call csub2(tt2)
call csub3(tt3)

call csub4(tt1)
call csub5(tt2)
call csub6(tt3)

print *,'pass'

contains

 subroutine csub1(tt1)
  use mod2
  type ty1
   sequence
   procedure(func1), pointer, nopass :: pp1
  end type
  type (ty1) :: tt1
 end subroutine

 subroutine csub2(tt2)
  use mod2
  type ty2
   sequence
   procedure(func2), pointer, nopass :: pp2
  end type
  type (ty2) :: tt2
 end subroutine

 subroutine csub3(tt3)
  use mod2
  type ty3
   sequence
   procedure(func3), pointer, nopass :: pp3
  end type
  type (ty3) :: tt3
 end subroutine

 subroutine csub4(tt1)
  type ty1
   sequence
   procedure(func1), pointer, nopass :: pp1
  end type
  type (ty1) :: tt1
 end subroutine

 subroutine csub5(tt2)
  type ty2
   sequence
   procedure(func2), pointer, nopass :: pp2
  end type
  type (ty2) :: tt2
 end subroutine

 subroutine csub6(tt3)
  type ty3
   sequence
   procedure(func3), pointer, nopass :: pp3
  end type
  type (ty3) :: tt3
 end subroutine

end
