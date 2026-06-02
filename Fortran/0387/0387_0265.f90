module mod1
 type normal_ty1
  integer :: nt1_i4_01
 end type
end module

use mod1

interface
 function eifunc1() result(rst)
  use mod1
  type (normal_ty1) :: rst
 end function
end interface

type (normal_ty1) :: nt1

procedure(type(normal_ty1))         :: iifunc1
procedure(type(normal_ty1)),pointer :: pnt1p
procedure(eifunc1),         pointer :: pef1p

pnt1p => iifunc1

nt1 = pnt1p()

if (nt1%nt1_i4_01.ne.1) print *,'fail'

pef1p => iifunc1

nt1 = pef1p()

if (nt1%nt1_i4_01.ne.1) print *,'fail'

print *,'pass'

end

function eifunc1() result(rst)
 use mod1
 type (normal_ty1) :: rst
 rst = normal_ty1(1)
end function

function iifunc1() result(rst)
 type normal_ty1
  integer :: nt1_i4_01
 end type
 type (normal_ty1) :: rst
 rst = normal_ty1(1)
end function
