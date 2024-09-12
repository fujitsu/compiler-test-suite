interface ty01
 function ifunc01(if01_arg01, if01_arg02, if01_arg03) result(irst01)
  integer :: if01_arg01
  integer :: if01_arg02
  logical :: if01_arg03
  integer :: irst01
 end function
end interface

type ty01
 integer :: if01_arg01 = 1
 integer :: if01_arg02 = 1
 integer :: if01_arg03 = 1
end type

type(ty01) :: t01

t01 = ty01(if01_arg03 = 4, if01_arg02 = 1, if01_arg01 = 2)

if (t01%if01_arg01.ne.2) print *, 'if01_arg01'
if (t01%if01_arg02.ne.1) print *, 'if01_arg02'
if (t01%if01_arg03.ne.4) print *, 'if01_arg03'

print *,'pass'

end
