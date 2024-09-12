call s1(1_1)
print *,'pass'
contains
subroutine s1(xx)
integer(1)::xx
integer(4),allocatable::yy
yy=xx+xx
if(yy/=2) print *,'err'
end subroutine
end
