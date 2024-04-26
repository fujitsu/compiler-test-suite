interface
subroutine sub(dmy)
integer,optional :: dmy
end subroutine
end interface
call sub(NULL())
end

subroutine sub(dmy)
integer,optional :: dmy
if(present(dmy)) then
print*,dmy
else
print*,'pass'
endif
end subroutine
