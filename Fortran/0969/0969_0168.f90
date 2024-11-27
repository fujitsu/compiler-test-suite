interface
 function i() result(ir)
  integer :: ir
 end function
end interface
procedure(i),      pointer :: ip
integer, external          :: e
integer, external, pointer :: ep
intrinsic                  :: iabs

type ty01
 procedure(integer), pointer, nopass :: p
end type
type (ty01) :: tt01

tt01 = ty01(i)
tt01 = ty01(e)
tt01 = ty01(iabs)

tt01 = ty01(ip)
tt01 = ty01(ep)

end

function i() result(ir)
 integer :: ir
 ir = 1
end function

function e() result(er)
 integer :: er
 er = 2
end function
