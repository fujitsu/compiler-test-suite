interface
 function ifunc01(iarg01, iarg02) result(irst01)
  integer, optional     :: iarg01
  integer               :: iarg02
  integer               :: irst01
 end function
 subroutine isub01(iarg01, iarg02)
  integer, optional     :: iarg01
  integer               :: iarg02
 end subroutine
end interface

procedure(ifunc01), pointer :: pprocp01
procedure(isub01),  pointer :: pprocp02

pprocp01 => ifunc01
pprocp02 => isub01

i = pprocp01(i, i)
call pprocp02(i, i)

print *,'pass'

end

function ifunc01(iarg01, iarg02) result(irst01)
 integer, optional     :: iarg01
 integer               :: iarg02
 integer               :: irst01
 irst01 = 1
end function

subroutine isub01(iarg01, iarg02)
 integer, optional     :: iarg01
 integer               :: iarg02
end subroutine
