call sub
call ent
end
subroutine sub
type adef
integer :: x
integer :: y
end type
type(adef),target::d
save :: d
type(adef),save,pointer :: x
x=>d
return
entry ent
if ( d%x .ne. 1 ) then
  print *,'pass'
end if
end
