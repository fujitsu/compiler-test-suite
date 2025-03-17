module mdef
type tdef
  character*4,pointer:: p(:)
end type
type t2def
  type(tdef)::q(2)
end type
end module

use mdef
type(t2def) ,pointer:: tt(:)

ii=2
jj=2
allocate(tt(ii))
allocate(tt(ii)%q(1)%p(3))
allocate(tt(ii)%q(2)%p(3))

tt(ii)%q(1)%p = '1234'
tt(ii)%q(1)%p =tt(jj)%q(1)%p(2)(2:4)
if ( tt(2)%q(1)%p(2) == '234' ) then
  print *,'pass'
else
  print *,'ng'
  print *,tt(2)%q(1)%p(2)
endif
end
