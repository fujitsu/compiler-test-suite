module mdef
type tdef
  integer,pointer:: p(:)
  integer,pointer:: q(:)
end type
!$OMP threadprivate(p,q)
type t2def
  type(tdef)::r(2)
end type
end module

use mdef
type(t2def) ,pointer:: tt(:)

ii=2
jj=2
allocate(tt(ii))
allocate(tt(ii)%r(1)%p(jj))
allocate(tt(ii)%r(1)%q(jj))

tt(ii)%r(1)%p(jj) = 1
tt(ii)%r(1)%q(jj) = 1
if ( tt(2)%r(1)%p(2) == 1 .and. tt(2)%r(1)%q(2) == 1) then
  print *,'pass'
else
  print *,'ng'
  print *,tt(2)%r(1)%p(2)
endif
end
