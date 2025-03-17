module mdef
type tdef
  integer,pointer:: p(:)
end type
end module

use mdef
type(tdef),target :: tt
type(tdef),pointer:: ttp

ii=2
jj=2
allocate(tt%p(ii))
ttp=>tt

ttp%p(jj) = 1
if ( ttp%p(2) == 1 ) then
  print *,'pass'
else
  print *,'ng'
  print *,ttp%p(2)
endif
end
