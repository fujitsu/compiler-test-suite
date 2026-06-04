interface
 function func2() result(rst)
  intrinsic idim
  procedure(idim), pointer :: rst
 end function
end interface

intrinsic idim

type :: ty2
 procedure(idim), pointer,nopass :: b
end type

type, extends(ty2) :: ty4
end type

type, extends(ty4) :: ty5
 type (ty4) :: ty44
end type

type (ty5) :: ttt

ttt%b=>     idim 
if (ttt%b(5,2)/=3) print *,1001
print *,'pass'
end

function func2() result(rst)
 intrinsic idim
 procedure(idim), pointer :: rst
 rst => idim
end function
