call test01()
print *,'pass'
end

module mod
interface 
function ifun(i) result(cha)
character(len=i+1) :: cha
end function   
end interface
end

subroutine test01()
use mod
type ty1 
 procedure(ifun),nopass,pointer :: ip
end type
type (ty1) :: str
str%ip=>ifun
if (str%ip(i=1)/='12')print *,'error'
write(1,'(a)')str%ip(i=1)
rewind 1
read(1,*) kk
if (kk/=12)print *,'error',kk
if (len(str%ip(i=1))/=2)print *,'error-2'
call s1(str%ip(i=1))
contains
subroutine s1(c)
character(*) c
if (c/='12')print *,'error-3'
if (len(c)/=2)print *,'error-4'
end subroutine
end 
function ifun(i) result(cha)
character(len=i+1) :: cha
cha='12'
end function   
