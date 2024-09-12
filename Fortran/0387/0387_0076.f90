module mod01
 type tyA
  sequence
  procedure(type(tyA)), pointer , nopass :: ptyApn
 end type
end module
module mod02
 type tyA
  sequence
  procedure(type(tyA)), pointer , nopass :: ptyApn
 end type
end module

use mod01, tyX => tyA

type ty1
 sequence
 procedure (type(tyX)), pointer , nopass :: ppp
end type

type (ty1) :: t1

call csub01(t1)
print *,'pass'
contains
 subroutine csub01(t1)
  use mod02, tyY => tyA
  type ty1
   sequence
   procedure (type(tyY)), pointer, nopass :: ppp
  end type
  type (ty1) :: t1
 end subroutine
end
