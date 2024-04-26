interface
subroutine sub(d2,dmy,d)
integer,optional,pointer :: d2,d
integer,optional :: dmy
end subroutine
end interface
integer,pointer :: pp=>NULL()
call sub(NULL(),NULL(),NULL(pp))
end

subroutine sub(d2,dmy,d)
integer,optional,pointer :: d2,d
integer,optional :: dmy
if(present(dmy)) then
 print*,dmy
else
 print*,"pass"
 if(present(d2) .neqv. .true.) print*,101
 if(present(d) .neqv. .true.) print*,102
endif
end subroutine
