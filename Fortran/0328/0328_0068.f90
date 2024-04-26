call sub
call ent
end
subroutine sub
integer,save :: x
return
entry ent
if ( x .ne. 2 ) then
  print *,'pass'
end if
end
