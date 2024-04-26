call sub
call ent
end
subroutine sub
integer,allocatable,dimension(:),save :: x
allocate(x(10))
x(5)=4
return
entry ent
if ( x(5) == 4 ) then
  print *,'pass'
end if
end
