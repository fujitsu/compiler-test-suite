program masklcheck
implicit none
integer*8,parameter::a=-1123
integer,parameter::b=1
integer,parameter::constvar=MASKL(a,b)
print*,constvar
end program masklcheck
