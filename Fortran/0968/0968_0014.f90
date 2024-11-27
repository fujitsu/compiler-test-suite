intrinsic :: int

interface int
 function ifunc01(if01_arg01, if01_arg02) result(irst01)
  integer :: if01_arg01
  integer :: if01_arg02
  integer :: irst01
 end function
end interface

type int
 real :: ti1_r01
end type

print *,int(1)
print *,int(1,1)

end

function ifunc01(if01_arg01, if01_arg02) result(irst01)
 integer :: if01_arg01
 integer :: if01_arg02
 integer :: irst01
 irst01 = int(if01_arg01) + int(if01_arg02)
end function
