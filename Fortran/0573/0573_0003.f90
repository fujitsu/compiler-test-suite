integer,allocatable::x
call sub(NULL())
call sub(NULL(x))
print*,"pass"
contains
subroutine sub(dmy)
integer,allocatable,intent(in):: dmy
call sub2(dmy)
if(dmy.ne.12)print*,"101"
end subroutine
subroutine sub2(dmy2)
integer,allocatable::dmy2
allocate(dmy2)
dmy2= 12
end subroutine
end

