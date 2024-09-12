interface generate_name
 function ifunc01(if01_arg01) result(irst01)
  integer :: if01_arg01
  integer :: irst01
 end function
end interface

type generate_name
 integer :: ii01
 integer :: ii02
end type

if (generate_name(10).ne.100) print *,'not pass'

print *,'pass'

end

function ifunc01(if01_arg01) result(irst01)
 integer :: if01_arg01
 integer :: irst01
 irst01 = if01_arg01 * if01_arg01
end function
