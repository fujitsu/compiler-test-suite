call sub(NULL())

contains
subroutine sub(dmy,d2)
integer,optional :: dmy,d2
if(present(dmy)) then
print*,dmy
else
print*,'pass'
 if(present(d2)) print*,101
endif
end subroutine
end
