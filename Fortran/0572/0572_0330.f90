subroutine sub()
real*4   A
A=SFUN(NULL())
A = A+20
contains
function SFUN(L1)
class(*),optional :: L1(..)
real*4   SFUN
SFUN = 12.0
if(present(L1)) print*,rank(L1)
print*,"Pass"
end function
END  subroutine
call sub()
end

