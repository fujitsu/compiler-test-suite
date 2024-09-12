interface ifunc01
 function ifunc01() result(irst01)
  integer :: irst01
 end function
 function ifunc02(if02_arg01) result(irst02)
  integer :: if02_arg01
  integer :: irst02
 end function
end interface

interface ifunc03
 function ifunc03() result(irst03)
  integer :: irst03
 end function
 function ifunc04(if04_arg01) result(irst04)
  integer :: if04_arg01
  integer :: irst04
 end function
end interface

procedure(integer), pointer :: pprocp01

integer :: ii_01

ii_01 = ifunc01()
ii_01 = ifunc02(if02_arg01 = ii_01)

pprocp01 => ifunc01
pprocp01 => ifunc02
pprocp01 => ifunc03
pprocp01 => ifunc04

if (ii_01.ne.pprocp01(ii_01)) print *,'error'

print *,'pass'

end

function ifunc01() result(irst01)
 integer :: irst01
 irst01 = 1
end function

function ifunc02(if02_arg01) result(irst02)
 integer :: if02_arg01
 integer :: irst02
 irst02 = if02_arg01
end function

function ifunc03() result(irst03)
 integer :: irst03
 irst03 = 3
end function

function ifunc04(if04_arg01) result(irst04)
 integer :: if04_arg01
 integer :: irst04
 irst04 = if04_arg01
end function
