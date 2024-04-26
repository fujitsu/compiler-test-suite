call outside (1.)
print *,'pass'
end

subroutine outside (a)
implicit none
real, intent(in) :: a
integer :: i, j
real :: x
call inside (i)
x = sin (3.89)
contains
subroutine inside (k)
implicit none
integer, intent(in) :: k
end subroutine inside
function sin (m)
implicit none
real :: sin
real, intent(in) :: m
sin=1
end function sin
end subroutine outside
