module mdef
type tdef2
  integer,pointer:: p2(:)
end type
type tdef1
  type(tdef2),pointer:: p1(:)
end type
end module

use mdef
type(tdef1) ,pointer:: tt(:)

ii=2
jj=2
allocate(tt(ii))
allocate(tt(ii)%p1(jj))
allocate(tt(ii)%p1(jj)%p2(ii))

tt(ii)%p1(jj)%p2(ii) = 1      
if ( tt(2)%p1(2)%p2(ii) == 1 ) then
  print *,'pass'
else
  print *,'ng'
  print *,tt(2)%p1(2)%p2(2)
endif
end
