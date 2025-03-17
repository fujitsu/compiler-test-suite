module mdef
type tdef
  integer,pointer:: p(:)
  integer,pointer:: q(:)
end type
!$OMP threadprivate(p,q)
end module

use mdef
type(tdef) ,pointer:: tt(:)

ii=2
jj=2
allocate(tt(ii))
allocate(tt(ii)%p(jj))
allocate(tt(ii)%q(jj))

tt(ii)%p(jj) = 1
tt(ii)%q(jj) = 1
if ( tt(2)%p(2) == 1 .and. tt(2)%q(2) == 1) then
  print *,'pass'
else
  print *,'ng'
  print *,tt(2)%p(2)
endif
end
