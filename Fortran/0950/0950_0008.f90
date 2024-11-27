program maskrcheck
implicit none
integer*8,parameter::a=-1
integer,parameter::b=1
integer,parameter::constvar=MASKR(a,b)
print*,constvar
end program maskrcheck
