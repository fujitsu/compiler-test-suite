program masklcheck
implicit none
integer,parameter::a=8
integer,parameter::b=2
logical,parameter::constvar=MASKL(a,b)
print*,constvar
end program masklcheck
