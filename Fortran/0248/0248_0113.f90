interface
subroutine sub(d2,dmy)
integer,optional :: dmy,d2
end subroutine
end interface
call sub(dmy=NULL())
end

subroutine sub(d2,dmy)
integer,optional :: dmy,d2
if(present(dmy)) then
print*,dmy
else
print*,"dmy is absent"
 if(present(d2)) print*,101
endif
end subroutine
