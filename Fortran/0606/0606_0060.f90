module m1
type ty
 integer :: ii = 2
 contains
  procedure,PRIVATE,PASS(a) :: asn
  generic :: assignment(=) => asn
end type

type,extends(ty) :: ty2
 integer :: jj=20
 contains
  procedure,pass(a) :: asn => asn2
end type

contains
 elemental subroutine asn(a,b)
  class(ty), INTENT(INOUT) :: a
  integer, INTENT(IN) :: b
  a%ii = b
 end subroutine

 elemental subroutine asn2(a,b)
  class(ty2), INTENT(INOUT) :: a
  integer, INTENT(IN) :: b
  a%ii = b-1
  a%jj = b
 end subroutine
end module

program main
use m1
implicit none
class(ty),allocatable :: alc(:)
type(ty) :: obj(2)
type(ty2) :: obj2(2)
integer :: ii(2)
ii = (/7,7/)

allocate(alc,source=obj)
alc = ii
if(all(alc%ii==7)) then
  deallocate(alc)
  allocate(alc,source=obj2)
  alc = ii
  select type(alc)
    type is (ty2)
      if(all(alc%ii/=6 .and. alc%jj/=7)) print*,101
  end select
  print*,'pass'
else
  print*,'fail'
end if
end program
