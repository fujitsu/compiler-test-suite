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
x%x=1
return
entry ent
if ( d%x==1 ) then
  print *,'pass'
end if
end
