module mod01
 type mod_ty1
  integer :: mt1_i4_01
 end type
end module

use mod01

interface
 function eifunc1() result(rst)
  use mod01
  type (mod_ty1) :: rst
 end function
end interface

type (mod_ty1) :: mt1

procedure(type(mod_ty1))         :: iifunc1
procedure(type(mod_ty1)),pointer :: pnt1p
procedure(eifunc1),      pointer :: pef1p

pnt1p => iifunc1

mt1 = pnt1p()

if (mt1%mt1_i4_01.ne.1) print *,'fail'

pef1p => iifunc1

mt1 = pef1p()

if (mt1%mt1_i4_01.ne.1) print *,'fail'

print *,'pass'

end

function eifunc1() result(rst)
 use mod01
 type (mod_ty1) :: rst
 rst = mod_ty1(1)
end function

function iifunc1() result(rst)
 use mod01
 type (mod_ty1) :: rst
 rst = mod_ty1(1)
end function
