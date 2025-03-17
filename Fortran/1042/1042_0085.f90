module mdef
type tdef1
 integer,pointer :: p(:)
 integer:: y(2)
end type
type tdef2
  type(tdef1)::x(2)
end type
end module

module mdef2
use mdef
type(tdef2),pointer :: tt(:)
end module

use mdef2
ii=2
jj=2
allocate(tt(2))
allocate(tt(1)%x(2)%p(2))

tt(1)%x(ii)%p(jj) = 1
tt%x(ii)%y(jj)    = 2

if ( tt(1)%x(2)%p(2)==1 .and. tt(1)%x(2)%y(2)==2 ) then
  print *,'pass'
else
  print *,'ng'
  print *,tt(1)%x(2)%p(2),tt(1)%x(2)%y(2)
endif
end
