real a,b
call ex(1.0,a,b)
print *,'pass'
end
subroutine ex (a,b,c)
real :: a,b,c
intent(in) :: a
intent(out) :: b
intent(inout) :: c
end
