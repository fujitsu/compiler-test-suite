call sub(dmy=NULL())

contains
subroutine sub(d2,dmy)
integer,optional :: dmy,d2
if(present(dmy)) then
print*,dmy
else
print*,'pass'
 if(present(d2)) print*,101
endif
end subroutine
end
