call test()
print *,'pass'
end
subroutine test()
real x,y
x = 3.0
call alpha(x,y)
end 
subroutine alpha(a,b)
implicit none
real, intent(in) :: a
real, intent(out) :: b
b=a
end subroutine alpha
