subroutine s1
contains
function i() result(y)
type ty1
 procedure(ifun1),pointer,nopass :: p
end type
type(ty1) :: y
end function
function ifun1() result(r)
type ty2
 procedure(ifun1),pointer,nopass :: z
end type
type(ty2) :: r
end function
end
print *,'pass'
end
