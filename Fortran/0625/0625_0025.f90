type ty01
 integer :: i01 = 1
end type

type , extends(ty01) :: ty02
 integer :: i02
end type

interface ty02
 function ifunc01(if01_arg01, if01_arg02) result(irst01)
  logical, optional :: if01_arg01
  integer           :: if01_arg02
  integer           :: irst01
 end function
 function ifunc02(if02_arg01, if02_arg02) result(irst02)
  integer           :: if02_arg01
  logical, optional :: if02_arg02
  integer           :: irst02
 end function
end interface

type(ty02) :: t02

t02 = ty02(ty01(), 1)

if (t02%i01.ne.t02%i02) print *,'error'

print *,'pass'

end

function ifunc01(if01_arg01, if01_arg02) result(irst01)
 logical, optional :: if01_arg01
 integer           :: if01_arg02
 integer           :: irst01
 irst01 = if01_arg02
 if (present(if01_arg01)) irst01 = irst01 * irst01
end function

function ifunc02(if02_arg01, if02_arg02) result(irst02)
 integer           :: if02_arg01
 logical, optional :: if02_arg02
 integer           :: irst02
 irst02 = if02_arg01
 if (present(if02_arg02)) irst02 = irst02 * irst02
end function
