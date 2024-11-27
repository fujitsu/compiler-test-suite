use , intrinsic :: iso_c_binding

interface
 function ifunc01(if01_arg01) result(irst01) bind(c)
  integer(kind = 4), intent(out) :: if01_arg01
  integer(kind = 4)              :: irst01
 end function
 function ifunc02(if01_arg02) result(irst02) bind(c)
  integer(kind = 4), intent(in)  :: if01_arg02
  integer(kind = 4)              :: irst02
 end function
end interface

type (c_funptr) :: cfptr_01

procedure(ifunc02), pointer :: pifunc02p01

integer(kind = 4) :: ii04_01

pifunc02p01 => ifunc02

cfptr_01 = c_funloc(ifunc01)

call c_f_procpointer(cfptr_01, pifunc02p01)

ii04_01 = 256

ii04_01 = pifunc02p01(ii04_01)

end

function ifunc01(if01_arg01) result(irst01) bind(c)
 integer(kind = 4), intent(out) :: if01_arg01
 integer(kind = 4)              :: irst01
 if01_arg01 = if01_arg01 * if01_arg01
 irst01 = if01_arg01
end function

function ifunc02(if01_arg02) result(irst02) bind(c)
 integer(kind = 4), intent(in)  :: if01_arg02
 integer(kind = 4)              :: irst02
 irst02 = if01_arg02
end function
