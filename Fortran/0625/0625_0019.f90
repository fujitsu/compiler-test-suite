interface generate_name01
 function ifunc01(if01_arg01) result(irst01)
  integer :: if01_arg01
  integer :: irst01
 end function
end interface

interface generate_name02
 function ifunc02(if02_arg01) result(irst02)
  integer :: if02_arg01
  integer :: irst02
 end function
end interface

type generate_name01
 integer :: i01
 integer :: i02
end type

type (generate_name01) :: t01

t01 = generate_name01(3, 4)

if (generate_name01(3).ne.t01%i01) print *,'not pass'
if (generate_name02(4).ne.t01%i02) print *,'not pass'

print *,'pass'

end

function ifunc01(if01_arg01) result(irst01)
 integer :: if01_arg01
 integer :: irst01
 irst01 = if01_arg01
end function

function ifunc02(if02_arg01) result(irst02)
 integer :: if02_arg01
 integer :: irst02
 irst02 = if02_arg01
end function
