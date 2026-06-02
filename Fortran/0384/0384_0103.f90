module mod
 interface jjjj
   module procedure iii  
 end interface
contains
 function iii(i,j,k,d)
  character(i+3) :: jfun
 end function
end

use mod
interface
 function ifun(i)
  character(i+3) :: ifun
 end function
 function jfun(i)
  character(i+3) :: jfun
 end function
end interface
procedure(ifun),pointer :: ipp
call test()
print *,"pass"
contains
subroutine test()
interface kkkkk
 function jfun(i)
  character(i+3) :: jfun
 end function
end interface
interface 
function ifun(i)
  character(i+3) :: ifun
 end function
end interface
procedure(ifun),pointer :: iii
character(6) :: cha
iii=>jfun
cha = jfun(3)
if (cha.ne.'aaabbb') print *,'fail'
cha = iii(3)
if (cha.ne.'aaabbb') print *,'fail'
end subroutine
end
 function jfun(i)
  character(i+3) :: jfun
  jfun='aaa'//'bbb'
 end function
