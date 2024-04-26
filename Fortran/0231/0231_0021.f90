module mod
type ty2
 type(ty2),pointer :: z
end type
contains
function i() result(y)
type ty1
 type(ty2),pointer :: p
end type
type(ty1) :: y
end function
function ifun1() result(r)
type(ty2) :: r
end function
end
use mod
print *,'pass'
end
