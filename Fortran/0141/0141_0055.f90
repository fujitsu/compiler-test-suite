module mod
contains
 subroutine subba()
procedure(ifun1),pointer :: p
integer      :: cha
integer a(10)
a=0
if (ifun(1)/=2) print *,100
p=>ifun
cha = p(1)
if (cha/=2) print *,101
 end subroutine
 function ifuna() result(iii)
  integer      :: iii
  entry ifun(i) result(iii)
  iii=2
  entry ifun1(i) result(iii)
 end function
end
use mod
call subba
print *,'pass'
end
