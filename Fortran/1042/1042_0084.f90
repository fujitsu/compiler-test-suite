module mdef
type tdef
  integer,pointer:: p(:)
end type
end module

module mdef2
use mdef
type(tdef) ,pointer:: tt(:)
end module

use mdef2
ii=2
jj=2
allocate(tt(ii))
allocate(tt(ii)%p(jj))

tt(ii)%p(jj) = 1
if ( tt(2)%p(2) == 1 ) then
  print *,'pass'
else
  print *,'ng'
  print *,tt(2)%p(2)
endif
end
