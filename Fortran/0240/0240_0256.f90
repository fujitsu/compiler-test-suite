interface
subroutine x(a, b, c)
implicit none
real, intent(in), dimension (2,8) :: a
real, intent(out), dimension (2,8) :: b, c
end subroutine x
function y(a, b)
implicit none
integer :: y
logical, intent(in) :: a, b
end function y
end interface
print *,'pass'
end
