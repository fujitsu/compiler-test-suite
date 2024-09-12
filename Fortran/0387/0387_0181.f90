call test01()
print *,'pass'
end

module mod
contains
subroutine sub()
end subroutine 
end

subroutine test01()
use mod
type ty1
 procedure(sub),nopass,pointer :: ip
end type
type (ty1) :: pp
 procedure(sub),pointer :: ip
pp%ip=>sub
call pp%ip()
ip=>sub
call ip()
end
