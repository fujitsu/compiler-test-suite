interface
 function ifun(i)
  character(i+3) :: ifun
 end function
 function jfun(i)
  character(i+3) :: jfun
 end function
end interface
procedure(ifun),pointer :: p
character(6) :: cha
p=>jfun
cha = jfun(3)
if (cha.ne.'aaabbb') print *,'fail'
cha = p(3)
if (cha.ne.'aaabbb') print *,'fail'
call test01()
call test02()
call test03()
call test04()
print *,"pass"
end
 function jfun(i)
  character(i+3) :: jfun
  jfun='aaa'//'bbb'
 end function

subroutine test01()
interface
 function ifun(i)
  character(i) :: ifun
 end function
 function kfun(i)
  character(i) :: kfun
 end function
end interface
procedure(ifun),pointer :: p
character(6) :: cha
p=>kfun
cha = kfun(6)
if (cha.ne.'aaabbb') print *,'fail'
cha = p(6)
if (cha.ne.'aaabbb') print *,'fail'
end
 function kfun(i)
  character(i) :: kfun
  kfun='aaa'//'bbb'
 end function


module mod02
contains
 function ifun(i)
  character(i) :: ifun
  ifun="a"
 end function
 function pfun(i)
  character(i) :: pfun
  pfun='aaa'//'bbb'
 end function
end 
subroutine test02()
use mod02
procedure(ifun),pointer :: p
character(6) :: cha
p=>pfun
cha = pfun(6)
if (cha.ne.'aaabbb') print *,'fail'
cha = p(6)
if (cha.ne.'aaabbb') print *,'fail'
end

module mod03
contains
 function ifun(i)
  character(i+3) :: ifun
  ifun="a"
 end function
 function pfun(i)
  character(i+3) :: pfun
  pfun='aaa'//'bbb'
 end function
end 
subroutine test03()
use mod03
procedure(ifun),pointer :: p
character(6) :: cha
p=>pfun
cha = pfun(3)
if (cha.ne.'aaabbb') print *,'fail'
cha = p(3)
if (cha.ne.'aaabbb') print *,'fail'
end

module mod04
contains
 function ifun(i)
  character(i+3) :: ifun
  ifun="a"
 end function
 function pfun1(i)
  character(i+3) :: pfun1,pfun
  entry pfun(i)
  pfun='aaa'//'bbb'
 end function
end
subroutine test04()
use mod04
procedure(ifun),pointer :: p
character(6) :: cha
p=>pfun
cha = pfun(3)
if (cha.ne.'aaabbb') print *,'fail'
cha = p(3)
if (cha.ne.'aaabbb') print *,'fail'
end

