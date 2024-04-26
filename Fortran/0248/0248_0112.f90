interface
subroutine sub(d2,dmy)
integer,optional :: d2
integer,optional :: dmy
end subroutine
end interface
call sub(NULL(),NULL())
end

subroutine sub(d2,dmy)
integer,optional :: d2
integer,optional :: dmy
if(present(dmy)) then
print*,dmy
else
print*,"dmy is absent"
 if(present(d2)) print*,101
endif
end subroutine
