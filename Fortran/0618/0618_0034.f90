module mod
interface
 function ifun()
  character*5 :: ifun
 end function
 function jfun()
  character :: jfun
 end function
end interface
procedure(ifun),pointer :: p1
procedure(jfun),pointer :: p2
character :: cha
end

use mod,only:ifun,jfun,cha
use mod,only:p1
use mod,only:p3=>p1,p2
use mod,only:p1

p2=>jfun
cha = p2()
if (cha.ne.'a') print *,'fail'
if (p2()/='a') print *,'fail'
p1=>ifun
p3=>p1
if (p3()/='12345') print *,'fail'
call s(p3())

print *,'pass'
end
function jfun()
 character :: jfun
 jfun='a'
end function
function ifun()
 character(5) :: ifun
 ifun='12345'
end function
subroutine s(x)
character*(*) x
if (len(x)/=5)print *,'fail'
if (x/='12345')print *,'fail'
end


