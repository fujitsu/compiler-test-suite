print *,'pass'
end

module mod
contains
function ifun(i)
ifun=i
end function
end

subroutine test03()
use mod
type ty1
 procedure(ifun),pointer,nopass :: ip
end type
type tya
 type (ty1) :: pp
end type
type(tya),pointer  :: xxx
type (ty1) :: pp(1)
allocate(xxx)
pp(1)=ty1(ifun)
xxx%pp=ty1(ifun)
end

