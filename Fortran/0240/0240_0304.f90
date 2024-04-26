program main
implicit none
interface
subroutine multiply(x, y)
implicit none
real, intent(in out) :: x
real, intent(in) :: y
end subroutine multiply
end interface
real :: a, b
a = 4.0
b = 12.0
call multiply(a, b)
if (1.eq.2)print *,a
print *,'pass'
end program main
subroutine multiply(x, y)
implicit none
real, intent(in out) :: x
real, intent(in) :: y
x = x*y
end subroutine multiply
