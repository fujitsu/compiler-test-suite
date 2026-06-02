module mod
contains
 subroutine subba()
procedure(ifun),pointer :: p
procedure(jfun),pointer :: pa
character(6) :: cha
p=>jfun
cha = jfun(1)
if (cha.ne.'a') print *,'fail'
cha = p(1)
if (cha.ne.'a') print *,'fail'
 end subroutine
 function ifuna() result(iii)
  character(1) :: iii
  entry ifun(i) result(iii)
  iii="a"
 end function
 function jfun1() result(iii)
  character(1) :: iii
  entry jfun(i) result(iii)
  iii="a"
 end function

 subroutine subb()
procedure(ifun),pointer :: p
procedure(jfun),pointer :: pa
character(6) :: cha
p=>jfun
cha = jfun(1)
if (cha.ne.'a') print *,'fail'
cha = p(1)
if (cha.ne.'a') print *,'fail'
 end subroutine
end

use mod
procedure(ifun),pointer :: p
procedure(jfun),pointer :: pa
character(6) :: cha
p=>jfun
cha = jfun(1)
if (cha.ne.'a') print *,'fail'
cha = p(1)
if (cha.ne.'a') print *,'fail'
call subba()
call subb()
call test02()
call test03()
print *,"pass"
end

module mod01
contains
 subroutine subba()
procedure(ifun),pointer :: p
procedure(jfun),pointer :: pa
character(6) :: cha
p=>jfun
cha = jfun(1)
if (cha.ne.'a') print *,'fail'
cha = p(1)
if (cha.ne.'a') print *,'fail'
 end subroutine
 function ifuna() result(iii)
  character(1) :: iii
  entry ifun(i) result(iii)
  iii="a"
 end function
 function jfun1() result(iii)
  character(1) :: iii
  entry jfun(i) result(iii)
  iii="a"
 end function
end
subroutine test02()
use mod01
call subba()
end

module mod03
contains
 function ifuna() result(iii)
  character(1) :: iii
  entry ifun(i) result(iii)
  iii="a"
 end function
 function jfun1() result(iii)
  character(1) :: iii
  entry jfun(i) result(iii)
  iii="a"
 end function
 subroutine subbx()
procedure(ifun),pointer :: p
procedure(jfun),pointer :: pa
character(6) :: cha
p=>jfun
cha = jfun(1)
if (cha.ne.'a') print *,'fail'
cha = p(1)
if (cha.ne.'a') print *,'fail'
 end subroutine
end
subroutine test03()
use mod03
call subbx()
end

