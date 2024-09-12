interface ifunc
 function ifunc01(di01) result(irst01)
  integer :: di01
  procedure(integer), pointer :: irst01
 end function
 function ifunc02(dr01) result(irst0r)
  real :: dr01
  procedure(real), pointer :: irst0r
 end function
end interface

procedure(integer), pointer :: pprocp01

pprocp01 => ifunc(1)

if (associated(pprocp01)) print *,'error'

print *,'pass'

end

function ifunc01(di01) result(irst01)
 integer :: di01
 procedure(integer), pointer :: irst01
 irst01 => null()
end function
