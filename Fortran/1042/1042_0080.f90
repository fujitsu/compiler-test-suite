module mdef
type tdef1
 character,pointer :: p(:)
 character:: y(2)
end type
type tdef2
  type(tdef1)::x(2)
end type
end module

use mdef
type(tdef2),pointer :: tt(:)

ii=2
jj=2
allocate(tt(2))
allocate(tt(1)%x(2)%p(2))

tt(1)%x(ii)%p(jj) = 'A'
tt%x(ii)%y(jj)    = 'B'

if ( tt(1)%x(2)%p(2)=='A' .and. tt(1)%x(2)%y(2)=='B' ) then
  print *,'pass'
else
  print *,'ng'
  print *,tt(1)%x(2)%p(2),tt(1)%x(2)%y(2)
endif
end
