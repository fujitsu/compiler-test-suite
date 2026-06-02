module mod
integer ::iii
contains
 subroutine jfun_mod()
 iii=10
 end subroutine
subroutine mod_sub()
interface
 subroutine ifun()
 end subroutine
 subroutine jfun()
 end subroutine
end interface
procedure(ifun),pointer :: p
p=>jfun
p=>p
p=>jfun_mod
call p()
end subroutine
end

use mod
interface
 subroutine ifun()
 end subroutine
 subroutine jfun()
 end subroutine
end interface
procedure(ifun),pointer :: p
p=>jfun
p=>p
p=>jfun_mod
iii=1
call p()
if (iii.ne.10) print *,'fail'
iii=1
call mod_sub()
if (iii.ne.10) print *,'fail'
print *,"pass"
end
 subroutine jfun()
print *,'jfun'
 end subroutine
