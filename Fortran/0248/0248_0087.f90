call sub(NULL(),2,3)

contains
subroutine sub(dmy,d2,d)
integer,optional :: dmy,d2,d
if(present(dmy)) then
print*,dmy
else
print*,'pass'
 if(.not. present(d2)) print*,101
 if(.not. present(d)) print*,102
endif
end subroutine
end
