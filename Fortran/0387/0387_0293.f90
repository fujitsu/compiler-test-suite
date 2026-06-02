module mod
contains
function ifun() result(iii)
entry ient() result(iii)
iii=1
end function
subroutine test02()
procedure(ifun),pointer :: jfun
jfun=>ifun
i=jfun()
if (i.ne.1) print *,'fail'
end subroutine
subroutine test01()
procedure(ient),pointer :: jfun
jfun=>ifun
i=jfun()
if (i.ne.1) print *,'fail'
end subroutine
subroutine test03()
procedure(ifun),pointer :: jfun
jfun=>ient
i=jfun()
if (i.ne.1) print *,'fail'
end subroutine
subroutine test04()
procedure(ient),pointer :: jfun
jfun=>ient
i=jfun()
if (i.ne.1) print *,'fail'
end subroutine
end

use mod
procedure(ient),pointer :: jfun
jfun=>ifun
i=jfun()
if (i.ne.1) print *,'fail'
call test01()
call test02()
call test03()
call test04()
print *,"pass"
end
