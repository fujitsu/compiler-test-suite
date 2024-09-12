module m1
type ty
 integer :: ii = 2
 contains
  procedure,PASS(a),PRIVATE :: les
  generic,public :: operator(<) => les
end type
 
type,extends(ty)::ty1
 integer :: jj = 3
 contains
  procedure,PASS(a),PRIVATE :: les=>gre
end type

contains
pure function les(b,a)
  class(ty), INTENT(IN) :: b
  class(ty), INTENT(IN) :: a
  logical :: les
  if(a%ii < b%ii) then
    les = .true.
  else
    les = .false.
  endif
end function

pure function gre(b,a)
  class(ty), INTENT(IN) :: b
  class(ty1), INTENT(IN) :: a
  logical :: gre
  if(a%ii > b%ii) then
    gre = .true.
  else
    gre = .false.
  endif
end function
end module
 
program main
use m1
implicit none
class(ty),pointer :: obj(:)
type(ty) :: obj2(4)
type(ty1),target::obj1(4)
integer :: x,i(4)

i=0
obj2%ii = 4
allocate(obj(4))
forall(x=1:4,obj2(x) < obj(x))
 i(x) = x
end forall

if(i(1) .ne. 1 .and. i(2) .ne. 2 .and. i(3) .ne. 3 .and. i(4) .ne. 4) then
  print*,101
else
  print*,'pass1'
endif


obj=>obj1
i=0
obj2%ii = 1
forall(x=1:4,obj2(x) < obj(x))
 i(x) = x
end forall
if(i(1) .ne. 0 .and. i(2) .ne. 0 .and. i(3) .ne. 0 .and. i(4) .ne. 0) then
  print*,102
else
  print*,'pass2'
endif

end program
