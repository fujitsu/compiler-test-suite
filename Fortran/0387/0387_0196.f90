module m1
contains
subroutine t2(iii)
interface 
 function ifun()
 end function
end interface
procedure(ifun),pointer :: iii
kkk=iii()
if (kkk/=123)print *,'error-4'
if (iii()/=123)print *,'error-5'
end subroutine
end
use m1
interface
 function ifun()
 end function
end interface
procedure(ifun),pointer :: ipp
ipp=>ifun
call t3(ipp)
call t2(ipp)
print *,"pass"
contains
subroutine t3(iii)
interface 
 function ifun()
 end function
end interface
procedure(ifun),pointer :: iii
kkk=iii()
if (kkk/=123)print *,'error-4'
if (iii()/=123)print *,'error-5'
end subroutine
end
 function ifun()
  ifun=123
 end function
