module m1
type ty
 integer :: ii = 2
 contains
  procedure,PASS(a),PRIVATE :: les
  generic,public :: operator(<) => les
end type

type,extends(ty) :: ty2
 integer :: jj = 2
 contains
  procedure,PASS(a),PRIVATE :: les=>les_ty2
  procedure,PASS(a),PRIVATE :: les_new
  generic,public :: operator(<) => les_new
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

 pure function les_ty2(a,b)
  class(ty2), INTENT(IN) :: a
  class(ty), INTENT(IN) :: b
  logical :: les_ty2

  if(a%ii > b%ii) then
   les_ty2 = .true.
  else
   les_ty2 = .false.
  endif
 end function

 pure function les_new(a,b)
  class(ty2), INTENT(IN) :: a
  logical, INTENT(IN) :: b
  logical :: les_new

  if(a%ii < 5) then
   les_new = b
  else
   les_new = .false.
  endif
 end function
end module

program main
use m1
implicit none
type(ty) :: obj(4),obj2(4)

call ss(obj)

contains
subroutine ss(alc)
class(ty) :: alc(:)
integer::x=0
obj2%ii = 4

do x=1,4
 print*,(alc(x) < obj2(x)),' : TRUE'
end do

print*,'pass'
end subroutine
end program
