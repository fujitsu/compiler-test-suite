call sub
call ent
end
subroutine sub
type adef
integer :: x
integer :: y=0
end type
type(adef)::d
save :: d
integer,save :: x


return
entry ent
if ( x .ne. 2  ) then
  print *,'pass'
end if
end
