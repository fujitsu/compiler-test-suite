call sub(NULL())

contains
subroutine sub(dmy)
integer,optional :: dmy
if(present(dmy)) then
print*,dmy
else
print*,'pass'
endif
end subroutine
end
