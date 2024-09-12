type ty01
 integer   :: if01_arg01
 real      :: if01_arg02
 complex   :: if01_arg03
 character :: if01_arg04 = 'a'
end type

interface ty01
 function ifunc01(if01_arg01, if01_arg02, if01_arg03, if01_arg04) result(irst01)
  integer           :: if01_arg01
  real              :: if01_arg02
  complex           :: if01_arg03
  logical, optional :: if01_arg04
  integer           :: irst01
 end function
end interface

type (ty01) :: t01

if (ty01(if01_arg01 = 1, if01_arg02 = 2.0, if01_arg03 = (3.0, 3.0),if01_arg04 = .true.).ne.0) print *,'pass'
t01 = ty01(if01_arg01 = 1.0, if01_arg02 = (2.0, 2.0), if01_arg03 = 3)

if (t01%if01_arg01.ne.1) print *,'error'

end

function ifunc01(if01_arg01, if01_arg02, if01_arg03, if01_arg04) result(irst01)
 integer           :: if01_arg01
 real              :: if01_arg02
 complex           :: if01_arg03
 logical, optional :: if01_arg04
 integer           :: irst01
 if (present(if01_arg04)) irst01 = 0
 irst01 = if01_arg01 * if01_arg02 * if01_arg03
end function
