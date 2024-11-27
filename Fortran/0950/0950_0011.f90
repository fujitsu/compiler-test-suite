program maskrcheck
implicit none
integer,parameter::a=8
integer,parameter::b=2
logical,parameter::constvar=MASKR(a,b)
print*,constvar
end program maskrcheck
