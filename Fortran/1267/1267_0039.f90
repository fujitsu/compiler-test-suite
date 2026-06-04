subroutine sub()
interface
subroutine foo(a,b)
real(kind=8), intent(inout) :: a
real(kind=8), intent(in) :: b
end subroutine foo
end interface
real(kind=8) :: a,b
a = 1.0
b = 1.0
call foo(a,b)
print *,a,b
end subroutine sub


call sub
end

subroutine foo(a,b)
real(kind=8) :: a
real(kind=8) :: b
a = 2
b = 2
end 
