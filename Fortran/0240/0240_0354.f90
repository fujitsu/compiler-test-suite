call s()
print *,'pass'
end
subroutine s()
type coordinates
real :: x,y = 40.0
end type coordinates
type(coordinates) :: a
if (abs(a%y-40.0)>0.000001   )print *,'err'
end
