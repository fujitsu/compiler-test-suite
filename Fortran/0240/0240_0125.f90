program main
implicit none
interface
function square(x)
implicit none
real, intent(in) :: x
real :: square
end function square
end interface
real :: a, b=3.6, c=3.8
a = 3.7 + b + square(c) + sin(4.7)
if (1.eq.2) print *, a
print *,'pass'
stop
end program main
function square(x)
implicit none
real, intent(in) :: x
real :: square
square = x*x
return
end function square
