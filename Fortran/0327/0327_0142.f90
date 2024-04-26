call sub
call ent
end
subroutine sub
integer,save :: x
x=2
return
entry ent
if ( x == 2 ) then
  print *,'pass'
end if
end
