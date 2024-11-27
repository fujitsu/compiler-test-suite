
implicit none

interface
 function ifunc01() result(irst01)
  integer :: irst01
 end function
end interface

type ty01
 integer :: i01
end type

intrinsic :: iabs

procedure(          ), pointer :: pr_pn01
procedure(integer   ), pointer :: pr_pn02
procedure(ifunc01   ), pointer :: pr_pn03
procedure(type(ty01)), pointer :: pr_pn04
procedure(iabs      ), pointer :: pr_pn05

external :: ex_pn01
pointer  :: ex_pn01

integer,    external,  pointer :: ex_pn02
type(ty01), external,  pointer :: ex_pn03

end

function ifunc01() result(irst01)
 integer :: irst01
 irst01 = 1
end function
