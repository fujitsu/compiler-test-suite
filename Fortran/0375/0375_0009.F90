#define a(i) a(1,i)
subroutine foo
integer ::i
real*8 :: a(10,10)
do i=1,10
 a(i) = a(i-1) + 1.0
end do
end subroutine
print *,'pass'
end
