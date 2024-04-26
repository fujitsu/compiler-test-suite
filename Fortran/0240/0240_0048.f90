x = 3.0
call alpha (x, y)
end program
subroutine alpha (a, b)
implicit none
real, intent(in) :: a
real, intent(out) :: b
print *,'pass'
end subroutine alpha
