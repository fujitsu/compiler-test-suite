call test()
print *,'pass'
end
subroutine test()
call outside(11.0)
end
subroutine outside (a)
implicit none
real , intent(in) :: a
integer :: i,j
real :: x
i=10
j=1
j=j
call inside (i)
x = sin(3.89)
if (int(x).ne.3   )print *,'err'
if (int(a).ne.11  )print *,'err'
contains
subroutine inside(k)
implicit none
integer, intent(in) :: k
if (k.ne.10   )print *,'err'
end subroutine inside
function sin (m)
implicit none
real :: sin
real , intent(in) :: m
sin=int(m)
end function sin
end subroutine outside
