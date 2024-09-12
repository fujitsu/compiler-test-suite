implicit integer (x)
implicit character (3) (y)

interface
 function ifunc01() result(irst01)
  integer :: irst01
 end function
end interface

procedure(),        pointer :: pprocp01
procedure(integer), pointer :: pprocp02
procedure(integer)          :: pproc01

pprocp01 => ifunc01
pprocp02 => ifunc01

if (pproc01(pprocp02()).ne.100.0) print *,'error'

print *,'pass'

end

function ifunc01() result(irst01)
 integer :: irst01
 irst01 = 10
end function

function pproc01(di01) result(prst01)
 integer :: di01
 integer :: prst01
 prst01 = di01 * di01
end function
