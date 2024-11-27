program maskrcheck
call sub
contains
subroutine sub()
implicit none
integer,parameter::a=9
integer,parameter::b=1
integer,parameter::constvar=MASKR(a,b)
integer,parameter::constvar2=MASKR(17,2)
integer,parameter::constvar3=MASKR(33,4)
integer*8,parameter::constvar4=MASKR(65,8)
integer,parameter::constvar11=MASKR(-1,b)
integer,parameter::constvar12=MASKR(-1,2)
integer,parameter::constvar13=MASKR(-1,4)
integer*8,parameter::constvar14=MASKR(-1,8)
print*,constvar
print*,constvar2
print*,constvar3
print*,constvar4
print*,constvar11
print*,constvar12
print*,constvar13
print*,constvar14
end
end program maskrcheck

