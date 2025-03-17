module mdef
type tdef
  integer,dimension(:),allocatable:: p
end type
end module

use mdef
type(tdef) ,pointer:: tt(:)
integer::v(4)
v=(/1,3,3,2/)

ii=3
jj=3
allocate(tt(2))
allocate(tt(2)%p(jj))

tt(ii-1)%p(jj-1) = 1
tt(ii-1)%p(v-1)  = 1
if ( tt(2)%p(2) == 1 ) then
  print *,'pass'
else
  print *,'ng'
  print *,tt(2)%p(2)
endif
end
