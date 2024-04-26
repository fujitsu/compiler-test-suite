integer,pointer :: pp=>NULL()
call sub(NULL(),NULL(),NULL(pp))

contains
subroutine sub(dmy,d2,d)
integer,optional :: dmy
integer,optional,pointer :: d2,d
if(present(dmy)) then
print*,dmy
else
print*,'pass'
 if(present(d2) .neqv. .true.) print*,101
 if(present(d) .neqv. .true.) print*,102
endif
end subroutine
end
