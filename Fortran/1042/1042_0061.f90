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
type(tdef2),target  :: tt
type(tdef2),pointer :: ttp


allocate(tt%x(2)%p(2))
ttp=> tt

ii=2
jj=2

ttp%x(ii)%p(jj) = 1
ttp%x(ii)%y(jj)    = 2

if ( ttp%x(2)%p(2)==1 .and. ttp%x(2)%y(2)==2 ) then
  print *,'pass'
else
  print *,'ng'
  print *,ttp%x(2)%p(2),ttp%x(2)%y(2)
endif
end
