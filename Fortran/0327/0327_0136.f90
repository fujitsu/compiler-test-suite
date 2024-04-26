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
x=2
d%x=1
return
entry ent
if ( x == 2 .and. d%x==1 .and. d%y==0 ) then
  print *,'pass'
end if
end
