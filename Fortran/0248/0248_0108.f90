interface
subroutine sub(dmy,d2)
integer,optional :: dmy,d2
end subroutine
end interface
call sub(NULL())
end

subroutine sub(dmy,d2)
integer,optional :: dmy,d2
if(present(dmy)) then
print*,dmy
else
print*,"dmy is absent"
 if(present(d2)) print*,101
endif
end subroutine
