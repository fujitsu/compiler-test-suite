module mod
contains
 subroutine subba()
procedure(ifun1),pointer :: p
character(6) :: cha
integer a(10)
a=0
p=>ifun
cha = p(1)
 end subroutine
 function ifuna() result(iii)
  character(1) :: iii
  entry ifun(i) result(iii)
  iii="a"
  entry ifun1(i) result(iii)
 end function
end
use mod
call subba
print *,'pass'
end
