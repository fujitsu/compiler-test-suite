module mdef
type tdef
  integer,pointer:: p(:,:,:)
end type
end module

use mdef
type(tdef) ,pointer:: tt(:,:,:)

ii=2
jj=2
allocate(tt(ii,jj,2))
allocate(tt(2,2,2)%p(jj,jj,2))

tt(ii,jj,2)%p(2,jj,jj) = 1
if ( tt(2,2,2)%p(2,2,2) == 1 ) then
  print *,'pass'
else
  print *,'ng'
  print *,tt(2,2,2)%p
endif
end
