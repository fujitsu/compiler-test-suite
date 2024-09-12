interface
 function func1() result(rst1)
  integer :: rst1
 end function
end interface

type ty1
 procedure(integer), nopass, pointer :: pnp
end type

procedure(func1), pointer :: pf1p
procedure(func1)          :: out_func1

integer  :: iep
external :: iep
pointer  :: iep

type (ty1) :: tt1

tt1 = ty1(func1)
pf1p => tt1%pnp
iep  => out_func1

nullify(iep)
nullify(tt1%pnp)
nullify(pf1p)

if (associated(iep).neqv.associated(tt1%pnp)) print *,'error'
if (associated(iep).neqv.associated(pf1p)   ) print *,'error'

print *,'pass'

end

function func1() result(rst1)
 integer :: rst1
 rst1 = 1
end function

function out_func1() result(rst1)
 integer :: rst1
 rst1 = 1
end function
