module mdef
type cdef
integer :: r
integer :: c=0
end type
type adef
integer :: x
type(cdef)::y
end type
end module

call sub
call ent
end
subroutine sub
use mdef
type(adef)::d
save :: d
integer,save :: x
x=2
d%x=1
return
entry ent
if ( x == 2 .and. d%x==1 .and. d%y%c==0 ) then
  print *,'pass'
end if
end
