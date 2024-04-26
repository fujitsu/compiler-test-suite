interface
subroutine sub(dmy,d2,d)
integer,optional :: dmy,d2,d
end subroutine 
end interface
call sub(NULL(),2,3)
end

subroutine sub(dmy,d2,d)
integer,optional :: dmy,d2,d
if(present(dmy)) then
print*,dmy
else
print*,"dmy is absent"
 if(.not. present(d2)) print*,101
 if(.not. present(d)) print*,102
endif
end subroutine
