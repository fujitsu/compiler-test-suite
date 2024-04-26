block
type tt
 integer :: pp
end type

type(tt) :: obj
integer :: ii
real :: jj(2:5)
character(4) :: ch(4)
logical :: ll
print*,ii,jj,ch,ll,obj,obj%pp
end block

call ss

contains
subroutine ss
block
type tt
 integer :: cc
end type

type(tt) :: obj

integer :: ii
real :: jj(2:5)
character :: ch
character(4) :: ch2(4)
logical :: ll
print*,ii,jj,ch,ll
print*,obj%cc
end block
end subroutine
end
