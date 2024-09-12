module mod
contains
function ifun_a() result(rrr)
  integer, pointer :: rrr
entry ifun_b() result(rrr)
end
subroutine subbb()
interface
 function func1() result(rst)
  integer, pointer :: rst
 end function
end interface

type ty1
 procedure(func1), pointer,nopass :: a
end type
type ty2
 type (ty1) :: ty
end type

type (ty2) :: ttt


ttt%ty     = ty1(ifun_b)
end
end

function func1() result(rst)
 integer, pointer :: rst
 rst => null()
end function
print *,'pass'
end
