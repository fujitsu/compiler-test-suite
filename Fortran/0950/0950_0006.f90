program masklcheck
call sub
contains
subroutine sub()
implicit none
integer,parameter::a=9
integer,parameter::b=1
integer,parameter::constvar=MASKL(a,b)
integer,parameter::constvar2=MASKL(17,2)
integer,parameter::constvar3=MASKL(33,4)
integer*8,parameter::constvar4=MASKL(65,8)
integer,parameter::constvar11=MASKL(-1,b)
integer,parameter::constvar12=MASKL(-1,2)
integer,parameter::constvar13=MASKL(-1,4)
integer*8,parameter::constvar14=MASKL(-1,8)
print*,constvar
print*,constvar2
print*,constvar3
print*,constvar4
print*,constvar11
print*,constvar12
print*,constvar13
print*,constvar14
end
end program masklcheck

