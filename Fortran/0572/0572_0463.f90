program pro
complex::d(2)
call sub(d)
contains
subroutine sub(c)
complex ::c(..),c2=0
real :: sfun1,x1    
sfun1(c) = range(c)
x1=sfun1(c2)
if(x1 /= 37.0000)print*,101
print*,"pass"

end subroutine
end
