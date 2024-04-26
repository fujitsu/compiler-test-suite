call sub
call ent
end
subroutine sub
type cdef
integer :: r
integer :: c=0
end type
type adef
integer :: x
type(cdef)::y
end type
type(adef)::d
save :: d
integer,save :: x
d%x=1
return
entry ent
if ( x .ne. 2  ) then
  print *,'pass'
end if
end
