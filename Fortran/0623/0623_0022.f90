use , intrinsic :: iso_c_binding
interface
 function ifunc01(if01_arg01) result(irst01) bind(c)
  integer(kind = 4), intent(in) :: if01_arg01
  integer(kind = 4)              :: irst01
 end function
end interface
type (c_funptr)             :: cfptr_01
procedure(ifunc01), pointer :: pifunc01p01
cfptr_01 = c_funloc(ifunc01)
call c_f_procpointer(cfptr_01, pifunc01p01)
if (1.eq.2) print *,pifunc01p01(10)
print *,"pass"
end
function ifunc01(if01_arg02) result(irst02) bind(c)
 integer(kind = 4), intent(in)  :: if01_arg02
 integer(kind = 4)              :: irst02
 irst02 = if01_arg02
end function
