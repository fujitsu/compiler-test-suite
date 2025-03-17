module mdef
type tdef
  integer,pointer:: p(:)
end type
end module

use mdef
type(tdef) ,pointer:: tt(:)

ii=2
jj=2
allocate(tt(ii))
allocate(tt(ii)%p(jj))
tt(2)%p = 0 
call sub(tt(ii)%p)
if ( tt(2)%p(2) == 1 ) then
  print *,'pass'
else
  print *,'ng'
  print *,tt(2)%p(2)
endif
contains
subroutine sub(iii)
integer::iii(:)
iii = iii + 1
end subroutine
end
