interface
subroutine sub(dmy,dmy2)
integer:: dmy
integer,allocatable:: dmy2
end subroutine
end interface
call sub(10,NULL())
print*,"pass"
end
subroutine sub(dmy,dmy2)
integer:: dmy
integer,allocatable:: dmy2
allocate(dmy2)
if(dmy.ne.10)print*,"101"
dmy2=dmy
end subroutine

