call sub
call ent
end
subroutine sub
integer,allocatable,dimension(:),save :: x
allocate(x(10))

return
entry ent
if ( x(5) .ne. 4 ) then
  print *,'pass'
end if
end
