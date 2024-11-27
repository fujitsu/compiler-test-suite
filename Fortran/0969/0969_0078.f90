intrinsic :: idim

interface idim
 function ifunc01(if01_arg01)  result(irst01)
  integer :: if01_arg01
  integer :: irst01
 end function
end interface

type idim
 integer :: i01
 logical :: l01
end type

print *,idim(1, 2)

end

function ifunc01(if01_arg01)  result(irst01)
 integer :: if01_arg01
 integer :: irst01
 irst01 = if01_arg01
end function
