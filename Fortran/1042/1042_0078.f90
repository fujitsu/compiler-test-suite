module mdef
type tdef
  character,pointer:: p(:)
end type
end module

use mdef
type(tdef) ,pointer:: tt(:)

ii=2
jj=2
allocate(tt(ii))
allocate(tt(ii)%p(jj))

tt(ii)%p(jj) = 'A'
if ( tt(2)%p(2) == 'A' ) then
  print *,'pass'
else
  print *,'ng'
  print *,tt(2)%p(2)
endif
end
