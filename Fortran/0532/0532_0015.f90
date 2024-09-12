function name() result(n)
pointer :: n
interface
 function func1() result(rst)
  integer, pointer :: rst
 end function
end interface
!pointer :: name

type ty1
 procedure(name ), pointer,nopass :: a
end type
type ty2
 type (ty1) :: ty
end type
 type (ty1) :: ty

type (ty2) :: ttt


ty     = ty1(name )
ttt%ty     = ty1(name )
end

function func1() result(rst)
 integer, pointer :: rst
 rst => null()
end function
print *,'pass'
end
