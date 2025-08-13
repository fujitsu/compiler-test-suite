module mdef
type tdef
  integer,pointer:: p(:,:)
end type
end module

use mdef
type(tdef) ,pointer:: tt(:)
integer::v(3)
v=(/2,1,3/)
ii=2
jj=2
allocate(tt(ii+1))
allocate(tt(ii+1)%p(jj+1,ii+1))
allocate(tt(ii)%p(jj+1,ii+1))

tt(ii)%p(2,jj) = 10 
tt(ii)%p(3,jj+1) = 10
tt(ii)%p(v,jj) = 5   
ii=ii+1
tt(ii)%p(1:3:2,ii) = 1
if ( tt(2)%p(3,3) == 10 ) then 
  print *,'pass'
else
  print *,'ng'
  print *,tt(2)%p(3,3)
endif
end
