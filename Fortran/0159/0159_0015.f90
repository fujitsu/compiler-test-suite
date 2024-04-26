interface generate_name01
 function ifunc01() result(irst01)
  integer :: irst01
 end function
 function ifunc02(if02_arg01) result(irst02)
  integer :: if02_arg01
  integer :: irst02
 end function
end interface

interface generate_name02
 function ifunc03(if03_arg01) result(irst03)
  procedure(integer) :: if03_arg01
  integer :: irst03
 end function
end interface

interface generate_name03
 function ifunc04(if04_arg01) result(irst04)
  integer :: if04_arg01
  integer :: irst04
 end function
end interface

interface generate_name04
 function ifunc05(if05_arg01) result(irst05)
  procedure(integer), pointer :: if05_arg01
  integer :: irst05
 end function
end interface

type generate_name01
 integer :: i01
end type

type generate_name02
 integer :: i02
end type

type generate_name03
 procedure(integer), pointer, nopass :: i03
end type

type generate_name04
 procedure(integer), pointer, nopass :: i04
end type

type (generate_name03)      :: t03
type (generate_name04)      :: t04

procedure(ifunc01), pointer :: ifunc01p
procedure(ifunc01), pointer :: ifunc01pa
procedure(ifunc01), pointer :: ifunc01pp

ifunc01p => ifunc01

t01 = generate_name01()
t01 = generate_name01(1)

iii = generate_name03(1)
if (iii.ne.1) print *,'err'
print *,'pass'
end

function ifunc01() result(irst01)
 integer :: irst01
 irst01 = 1
end function

function ifunc03(if03_arg01) result(irst03)
 procedure(integer) :: if03_arg01
 integer            :: irst03
 irst03 = if03_arg01()
end function

function ifunc04(if04_arg01) result(irst04)
 integer :: if04_arg01
 integer :: irst04
 irst04 = if04_arg01
end function
 function ifunc02(if02_arg01) result(irst02)
  integer :: if02_arg01
  integer :: irst02
   irst02 = if02_arg01
 end function
