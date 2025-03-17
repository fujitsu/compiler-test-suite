module mdef
type tdef1
 integer,pointer :: p(:,:,:)
 integer:: y(2,2,2)
end type
type tdef2
  type(tdef1)::x(2,2,2)
end type
end module

use mdef
type(tdef2),pointer :: tt(:,:,:)

ii=2
jj=2
allocate(tt(2,2,2))
allocate(tt(1,1,1)%x(2,2,2)%p(2,2,2))

tt(1,1,1)%x(ii,2,ii)%p(2,jj,jj) = 1
tt%x(ii,ii,2)%y(jj,jj,2)    = 2

if ( tt(1,1,1)%x(2,2,2)%p(2,2,2)==1 .and. tt(1,1,1)%x(2,2,2)%y(2,2,2)==2 ) then
  print *,'pass'
else
  print *,'ng'
  print *,tt(1,1,1)%x(2,2,2)%p(2,2,2),tt(1,1,1)%x(2,2,2)%y(2,2,2)
endif
end
