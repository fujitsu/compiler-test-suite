call sub
call ent
end
subroutine sub
type cdef
integer :: r=2
integer :: c
end type
type adef
integer :: x
type(cdef)::y
end type
type(adef)::d
save :: d
integer,save :: x
x=2
d%x=1
return
entry ent
if ( x == 2 .and. d%x==1 .and. d%y%r==2 ) then
  print *,'pass'
end if
end
