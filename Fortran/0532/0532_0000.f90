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

print *,'pass'

ttt%ty     = ty1(func1)
end

function func1() result(rst)
 integer, pointer :: rst
 rst => null()
end function
