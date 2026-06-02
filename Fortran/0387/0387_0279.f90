module mod
type ty1
 integer :: i
end type
end

use mod
interface
 function ifun()
  use mod
  type(ty1) :: ifun
 end function
 function jfun()
  use mod
  type(ty1) :: jfun
 end function
end interface
procedure(ifun),pointer :: p
type(ty1) :: cha
p=>jfun
cha = p()
if (cha%i.ne.1) print *,'fail'
print *,'pass'
end
 function jfun()
  use mod
  type(ty1) :: jfun
  jfun%i=1
 end function
