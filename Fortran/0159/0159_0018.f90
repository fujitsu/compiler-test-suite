interface dim
 function ifunc02(if01_arg01, if01_arg02,iii) result(irst01)
  integer :: if01_arg01
  real    :: if01_arg02
  complex :: irst01
 end function
end interface
interface dimaa
 function ifunc01(if01_arg01, if01_arg02) result(irst01)
  integer :: if01_arg01
  real    :: if01_arg02
  complex :: irst01
 end function
end interface

type dim
 real    :: r01
 integer :: i01
end type

type(dim) :: td01

td01 = dim(2.0, 1)

if (dim(if01_arg01 = td01%i01, if01_arg02 = td01%r01,iii=1).ne.ifunc02(if01_arg01 = td01%i01, if01_arg02 = td01%r01,iii=1) ) print *,'err'
print *,'pass'
end

function ifunc01(if01_arg01, if01_arg02) result(irst01)
 integer :: if01_arg01
 real    :: if01_arg02
 complex :: irst01
 irst01 = cmplx(if01_arg01, if01_arg02) - cmplx(if01_arg02, if01_arg01)
end function
 function ifunc02(if01_arg01, if01_arg02,iii) result(irst01)
  integer :: if01_arg01
  real    :: if01_arg02
  complex :: irst01
 irst01 = 1
 end function
