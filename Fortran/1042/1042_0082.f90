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

call sub(tt(2)%p,ii,jj)
if ( tt(2)%p(2) == 1 ) then
  print *,'pass'
else
  print *,'ng'
  print *,tt(2)%p(2)
endif
contains
subroutine sub(i,ii,jj)
use mdef
integer::i(:),ii,jj
i(ii+jj-2) = 1
end subroutine
end
