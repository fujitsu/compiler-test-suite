type tdef
  integer,pointer:: p(:)
end type

type(tdef) ,pointer:: tt(:)
call sub(tt)
if ( tt(2)%p(2) == 1 ) then
  print *,'pass'
else
  print *,'ng'
  print *,tt(2)%p(2)
endif
contains

subroutine sub(tt)
type(tdef) ,pointer:: tt(:)

ii=2
jj=2
allocate(tt(ii))
allocate(tt(ii)%p(jj))

tt(ii)%p(jj) = 1
end subroutine
end
