module m1
type ty
 integer :: ii = 2
 contains
  procedure,PASS(a),PRIVATE :: les
  generic,public :: operator(<) => les
end type

contains
 pure function les(a,b)
  class(ty), INTENT(IN) :: a
  class(ty), INTENT(IN) :: b
  logical :: les

  if(a%ii < b%ii) then
   les = .true.
  else
   les = .false.
  endif

 end function
end module

program main
use m1
implicit none
type(ty) :: obj(4),obj2(4)
integer :: x,i=0
obj2%ii = 4

forall(x=1:4,obj(x) < obj2(x))
 i = x
end forall

if(i==4) then
 print*,'pass'
else
 print*,101
endif
end program
