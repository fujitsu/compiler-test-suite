call test()
print *,'pass'
end
subroutine test()
interface
subroutine x (a,b,c)
implicit none
real, intent(in), dimension(2,8) :: a
real, intent(out), dimension(2,8) :: b,c
end subroutine x
function y (a,b)
implicit none
integer :: y
logical, intent(in) :: a,b
end function y
end interface
real, dimension(2,8) :: a,b,c
a=1.0_4
call x(a,b,c)
do i1=1,2
 do i2=1,8
  if (int(b(i1,i2)).ne.int(c(i1,i2))) print *,'err'
 end do
end do
if (y(.true.,.true.).ne.1)print *,'err'
end
subroutine x (a,b,c)
implicit none
real, intent(in), dimension(2,8) :: a
real, intent(out), dimension(2,8) :: b,c
b=a
c=a
end subroutine x
function y (a,b)
implicit none
integer :: y
logical, intent(in) :: a,b
if (a.neqv.b) print *,'err'
y=1
end function y
