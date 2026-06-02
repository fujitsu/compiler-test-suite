module mod
interface
 function ifun()
  character*5 :: ifun
 end function
 function jfun()
  character :: jfun
 end function
end interface
type str
procedure(ifun),nopass,pointer :: p1
procedure(jfun),nopass,pointer :: p2
end type
character :: cha
end

use mod,only:ifun,jfun,cha
use mod,only:str1=>str
use mod,only:str

type(str):: ptr
type(str1):: ptr1

ptr%p2=>jfun
cha = ptr%p2()
if (cha.ne.'a') print *,'fail'
if (ptr%p2()/='a') print *,'fail'
ptr%p1=>ifun
if (ptr%p1()/='12345') print *,'fail'
call s(ptr%p1())
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


