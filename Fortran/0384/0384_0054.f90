module m1
contains
subroutine test(ifun,iii)
interface 
 function nnn(i)
  character(3) :: nnn
 end function
 function ifun(i)
  character(3) :: ifun
 end function
end interface
procedure(ifun),pointer :: iii
character(3)::kkk
kkk=ifun(1)
if (kkk/='123')print *,'error-2'
kkk=iii(1)
if (kkk/='123')print *,'error-4'
if (iii(1)/='123')print *,'error-5'
end subroutine
end
use m1
interface
 function ifun(i)
  character(3) :: ifun
 end function
 function nnn(i)
  character(3) :: nnn
 end function
end interface
procedure(ifun),pointer :: ipp
ipp=>ifun
call test(ipp,ipp)
print *,"pass"
end
 function ifun(i)
  character(3) :: ifun
  ifun='123'
 end function
