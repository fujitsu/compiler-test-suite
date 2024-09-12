interface ty01
 function ifunc01(if01_arg01) result(irst01)
  type ty01
   sequence
   integer :: i01
  end type
  type (ty01) :: if01_arg01
  integer :: irst01
 end function
 function ifunc02(if02_arg01, if02_arg02) result(irst02)
  integer :: if02_arg01
  integer :: if02_arg02
  integer :: irst02
 end function
end interface

type ty01
 sequence
 integer :: i01
end type

type (ty01) :: t01

t01 = ty01(ty01(ty01(ty01(ty01(ty01(ty01(1 + 2 + ty01(1, 2), 4 + 5 + ty01(2, 4)))))), ty01(ty01(ty01(ty01(ty01(1 + 2 + ty01(1, 2), 4 + 5 + ty01(2, 4))))))))

if (t01%i01.ne.42) print *,'error'

print *,'pass'

end

function ifunc01(if01_arg01) result(irst01)
 type ty01
  sequence
  integer :: i01
 end type
 type (ty01) :: if01_arg01
 integer :: irst01
 irst01 = if01_arg01%i01
end function

function ifunc02(if02_arg01, if02_arg02) result(irst02)
 integer :: if02_arg01
 integer :: if02_arg02
 integer :: irst02
 irst02 = if02_arg01 + if02_arg02
end function
