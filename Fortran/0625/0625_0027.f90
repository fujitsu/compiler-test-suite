type, bind(c) :: ty01
 integer :: i01
end type

interface ty01
 function ifunc01() result(irst01)
  type, bind(c) :: ty01
   integer :: i01
  end type
  type(ty01) :: irst01
 end function
 function ifunc02(if02_arg01) result(irst02)
  type, bind(c) :: ty01
   integer :: i01
  end type
  type(ty01) :: if02_arg01
  type(ty01) :: irst02
 end function
 function ifunc03(if03_arg01, if03_arg02) result(irst03)
  type, bind(c) :: ty01
   integer :: i01
  end type
  integer    :: if03_arg01
  integer    :: if03_arg02
  type(ty01) :: irst03
 end function
end interface

type (ty01) :: t01a, t01b

t01a = ty01()
t01b = ty01(ty01())
if (t01a%i01.ne.t01b%i01) print *,'error 01'

t01a = ty01(1)
t01b = ty01(ty01(1))
if (t01a%i01.ne.t01b%i01) print *,'error 02'

t01a = ty01(1, 2)
t01b = ty01(ty01(1, 2))
if (t01a%i01.ne.t01b%i01) print *,'error 03'

print *,'pass'

end

function ifunc01() result(irst01)
 type, bind(c) :: ty01
  integer :: i01
 end type
 type(ty01) :: irst01
 irst01 = ty01(1)
end function

function ifunc02(if02_arg01) result(irst02)
 type, bind(c) :: ty01
  integer :: i01
 end type
 type(ty01) :: if02_arg01
 type(ty01) :: irst02
 irst02 = if02_arg01
end function

function ifunc03(if03_arg01, if03_arg02) result(irst03)
 type, bind(c) :: ty01
  integer :: i01
 end type
 integer    :: if03_arg01
 integer    :: if03_arg02
 type(ty01) :: irst03
 irst03 = ty01(if03_arg01 + if03_arg02)
end function
