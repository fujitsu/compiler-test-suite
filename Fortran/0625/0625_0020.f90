interface t01
 function ifunc01(if01_arg01) result(irst01)
  integer :: if01_arg01
  integer :: irst01
 end function
 function ifunc02(if02_arg01) result(irst02)
  integer :: if02_arg01(10)
  integer :: irst02(10)
 end function
 function ifunc03(if03_arg01) result(irst03)
  integer :: if03_arg01(10, 10)
  integer :: irst03(10, 10)
 end function
end interface

type t01
 integer :: i01
 integer :: i02
end type

integer :: ia01(10,10)
ia01 = 1

ia01 = t01(t01(t01(t01(t01(t01(t01(t01(t01(t01(t01(t01(ia01))))))))))))
if (ia01(1,1).ne.ia01(10,10)) print *,'not pass'

print *,'pass'

end

function ifunc01(if01_arg01) result(irst01)
 integer :: if01_arg01
 integer :: irst01
 irst01 = if01_arg01
end function

function ifunc02(if02_arg01) result(irst02)
 integer :: if02_arg01(10)
 integer :: irst02(10)
 irst02 = if02_arg01
end function

function ifunc03(if03_arg01) result(irst03)
 integer :: if03_arg01(10, 10)
 integer :: irst03(10, 10)
 irst03 = if03_arg01
end function
