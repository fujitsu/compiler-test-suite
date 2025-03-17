module mdef
type tdef
  character*4,pointer:: p(:)
end type
end module

use mdef
type(tdef) ,pointer:: tt(:)

ii=2
jj=2
allocate(tt(ii))
allocate(tt(ii)%p(3))

tt(ii)%p = '1234'
tt(ii)%p =tt(jj)%p(2)(2:4)
if ( tt(2)%p(2) == '234' ) then
  print *,'pass'
else
  print *,'ng'
  print *,tt(2)%p(2)
endif
end
