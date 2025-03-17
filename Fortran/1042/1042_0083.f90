module mdef
type tdef1
 integer,pointer :: p(:)
 integer:: y(2)
end type
type tdef2
  type(tdef1)::x(2)
end type
end module

use mdef
type(tdef2),pointer :: tt(:)
integer::ii,jj
ii=2
jj=2
allocate(tt(2))
allocate(tt(1)%x(2)%p(2))

call sub(tt(1)%x(2)%p,ii,jj)
call sub(tt(1)%x(2)%y,ii,jj+2)

if ( tt(1)%x(2)%p(2)==2 .and. tt(1)%x(2)%y(2)==4 ) then
  print *,'pass'
else
  print *,'ng'
  print *,tt(1)%x(2)%p(2),tt(1)%x(2)%y(2)
endif
contains
subroutine sub(iii,ii,jj)
integer::ii,jj
integer::iii(*)
iii(1) = 1 + ii - 1
iii(2) = 1 + jj - 1
end subroutine
end
