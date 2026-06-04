module mod1
 type mod_ty1
  sequence
  integer :: mtyp_i4_01
 end type
 contains
  function xfunc1() result(rst)
   type(mod_ty1) :: rst
   rst = mod_ty1(1)
  end function
end module

interface
 function func() result(rst)
  use mod1
  procedure(type(mod_ty1)), pointer :: rst
 end function
end interface

type mod_ty1
 sequence
 integer :: mtyp_i4_01
end type

type(mod_ty1) :: tmt1

procedure(type(mod_ty1)),pointer :: ptmp

ptmp => func()

tmt1 = ptmp()

if (tmt1%mtyp_i4_01.ne.1) print *,'fail'

print *,'pass'

end

function func() result(rst)
 use mod1
 procedure(type(mod_ty1)), pointer :: rst
 rst => xfunc1
end function
