module mdef
type tdef
  integer,pointer:: p(:)
end type
end module

use mdef
type(tdef) ,pointer:: tt(:)

ii=2
jj=2
allocate(tt(ii))
allocate(tt(ii)%p(jj))

call sub(tt,ii,jj)
call sub(ii=ii,jj=jj)
if ( tt(2)%p(2) == 1 ) then
  print *,'pass'
else
  print *,'ng'
  print *,tt(2)%p(2)
endif
contains

subroutine sub(tt,ii,jj)
use mdef
type(tdef),optional :: tt(*)
integer::ii,jj
if ( present(tt) ) then
  tt(ii)%p(jj) = 1
else
  return
endif
end subroutine
end
