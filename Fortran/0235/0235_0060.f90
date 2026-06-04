interface
 function func1() result(rst)
  integer, pointer :: rst
 end function
 function func2() result(rst)
  intrinsic idim
  procedure(idim), pointer :: rst
 end function
end interface

intrinsic idim

type ty1
 procedure(func1), pointer,nopass :: a
end type

type, extends(ty1) :: ty2
 procedure(idim), pointer,nopass :: b
end type

type, extends(ty2) :: ty3
end type

type, extends(ty3) :: ty4
end type

type, extends(ty4) :: ty5
 type (ty4) :: ty44
end type

type (ty5) :: ttt

ttt%ty4     = ty4(ty3(ty2(ty1(func1), idim )))
if (ttt%b(5,2)/=3) print *,1001
print *,'pass'
end

function func2() result(rst)
 intrinsic idim
 procedure(idim), pointer :: rst
 rst => idim
end function

function func1() result(rst)
 integer, pointer :: rst
 rst => null()
end function
