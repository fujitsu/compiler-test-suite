integer,allocatable:: dmy
call sub(NULL())
call sub(NULL(dmy))
print*,"pass"
contains
subroutine sub(dmy)
integer,allocatable,optional:: dmy
if(present(dmy)) then
     allocate(dmy)
     dmy =10
     call sub2(NULL())
end if 
end subroutine
subroutine sub2(dmy2)
integer,optional,allocatable::dmy2
if(present(dmy2)) then
allocate(dmy2)
dmy2= 12
end if 
end subroutine
end

