subroutine s2
type point
   character(len=2,kind=1) :: x
end type point
type(point) m
m = point(x=1_"12xx")
if (m%x/=1_"12") print *,1101
end
call s2
print *,'pass'
end
