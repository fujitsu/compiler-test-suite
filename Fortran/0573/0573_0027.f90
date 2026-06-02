interface
subroutine sub(dmy,dmy2)
integer,allocatable:: dmy
integer,allocatable:: dmy2
end subroutine
subroutine sub2(dmy)
integer,allocatable:: dmy
end subroutine
end interface
call sub(NULL(),NULL())
print*,"pass"
end
subroutine sub(dmy,dmy2)
integer,allocatable:: dmy
integer,allocatable:: dmy2
allocate(dmy)
allocate(dmy2)
dmy2 =10
dmy =20
if(dmy.ne.20)print*,"109"
deallocate(dmy)
deallocate(dmy2)
end subroutine
subroutine sub2(dmy)
integer,allocatable:: dmy
dmy =13
end subroutine sub2

