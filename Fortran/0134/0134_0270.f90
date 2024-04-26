module mod
contains
 subroutine subba()
procedure(ifun),pointer :: p
character(6) :: cha
p=>ifun
cha = p(1)
 end subroutine
 function ifuna() result(iii)
  character(1) :: iii
  entry ifun(i) result(iii)
  iii="a"
 end function
end
use mod
call subba
print *,'pass'
end
