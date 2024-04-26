integer,pointer :: pp
call sub(NULL(),NULL(),NULL(pp))

contains
subroutine sub(d2,dmy,d)
integer,optional,pointer :: d2,d
integer,optional :: dmy
if(present(dmy)) then
 print*,dmy
else
 print*,'pass'
 if(present(d2) .neqv. .true.) print*,101
 if(present(d) .neqv. .true.) print*,102
endif
end subroutine
end
