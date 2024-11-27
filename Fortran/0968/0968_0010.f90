interface
 function pifunc01p(pif01_arg01) result(pirst01)
  integer :: pif01_arg01
  integer :: pirst01
 end function
 function ifunc01(if01_arg01) result(irst01)
  integer :: if01_arg01
  integer :: irst01
 end function
end interface
pointer :: pifunc01p

pifunc01p => ifunc01

if (cfunc01(pifunc01p, 4).ne.8) print *, ' result = ', cfunc01(pifunc01p, 4)

print *,'pass'

contains
 function cfunc01(cf01_arg01, cf01_arg02) result(crst01)
  interface
   function cf01_arg01(cf01_df01_arg01) result(cf01_drst01)
    integer :: cf01_df01_arg01
    integer :: cf01_drst01
   end function
  end interface
  pointer :: cf01_arg01
  integer :: cf01_arg02
  integer :: crst01
  crst01 = cf01_arg01(cf01_arg02)
 end function

end

function ifunc01(if01_arg01) result(irst01)
 integer :: if01_arg01
 integer :: irst01
 irst01 = if01_arg01 + if01_arg01
end function
