module mod01
 type tyA
  sequence
  procedure(type(tyA)), pointer , nopass :: ptyApn
  integer :: uu
 end type
end module
module mod02
 type,bind(c):: tyAa
   integer :: i
 endtype
 type:: tyA
  sequence
  procedure(type(tyA)), pointer , nopass :: ptyApn
  integer :: uu
 end type
end module

use mod01, tyX => tyA

type tyA
 sequence
 procedure (type(tyX)), pointer , nopass :: ppp
end type

type (tyA) :: t1

call csub01(t1)

contains
 subroutine csub01(t1)
  use mod02, tyY => tyA
  type tyA
   sequence
   procedure (type(tyY)), pointer, nopass :: ppp
  end type
  type (tyA) :: t1
print *,'pass'
 end subroutine
end
