interface
 function ifunc01(if01_arg01) result(irst01)
  integer :: if01_arg01
  integer :: irst01
 end function
 subroutine isub01(is01_arg01)
  integer :: is01_arg01
 end subroutine
end interface

integer(kind = 4) :: ii04_01, ii04_02

procedure(), pointer :: pprocp01

ii04_01 = 2


ii04_02 = 0

print *,associated(pprocp01)

pprocp01 => isub01
call pprocp01(ii04_02)

print *,ii04_02

!$OMP END SECTIONS

print *,associated(pprocp01)

print *,ii04_02

end

function ifunc01(if01_arg01) result(irst01)
 integer :: if01_arg01
 integer :: irst01
 irst01 = if01_arg01
end function

subroutine isub01(is01_arg01)
 integer :: is01_arg01
 is01_arg01 = is01_arg01 + 4
end subroutine
