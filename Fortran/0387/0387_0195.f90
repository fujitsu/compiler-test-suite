module m1
contains
subroutine t1(nnn)
interface 
 function nnn()
  character(3) :: nnn
 end function
end interface
character(3)::kkk
kkk=nnn()
if (kkk/='123')print *,'error-2'
end subroutine
end
use m1
interface
 function ifun()
  character(3) :: ifun
 end function
end interface
call t1(ifun)
print *,"pass"
end
 function ifun()
  character(3) :: ifun
  ifun='123'
 end function
