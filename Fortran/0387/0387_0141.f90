interface
 function ifunc01(iarg01) result(irst01)
  integer, value      :: iarg01
  integer             :: irst01
 end function
 subroutine isub01(iarg01)
  integer, value      :: iarg01
 end subroutine
end interface

procedure(ifunc01), pointer :: pprocp01
procedure(isub01),  pointer :: pprocp02

integer :: i

pprocp01 => ifunc01
pprocp02 => isub01

i = pprocp01(1) 
call pprocp02(i)

print *,'pass'

end

function ifunc01(iarg01) result(irst01)
 integer, value      :: iarg01
 integer             :: irst01
 irst01 = iarg01
end function

subroutine isub01(iarg01)
 integer, value     :: iarg01
end subroutine
