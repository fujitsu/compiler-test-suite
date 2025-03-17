type tdef
  integer,pointer:: p(:)
end type

type t2def
  type(tdef)::q(2)
end type

type(t2def) ,pointer:: tt(:)
call sub(tt)
if ( tt(2)%q(1)%p(2) == 1 ) then
  print *,'pass'
else
  print *,'ng'
  print *,tt(2)%q(1)%p(2)
endif
contains

subroutine sub(tt)
type(t2def) ,pointer:: tt(:)

ii=2
jj=2
allocate(tt(ii))
allocate(tt(ii)%q(1)%p(jj))
allocate(tt(ii)%q(2)%p(jj))

tt(ii)%q(1)%p(jj) = 1
end subroutine
end
