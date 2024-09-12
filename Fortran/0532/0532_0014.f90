subroutine sub()
interface
 function func1() result(rst)
  integer, pointer :: rst
 end function
end interface

type ty1
 procedure(sub  ), pointer,nopass :: a
end type
type ty2
 type (ty1) :: ty
end type

type (ty2) :: ttt


ttt%ty     = ty1(sub)
end

function func1() result(rst)
 integer, pointer :: rst
 rst => null()
end function
print *,'pass'
end
