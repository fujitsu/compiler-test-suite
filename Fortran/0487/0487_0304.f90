interface generate_name01
 function ifunc01() result(irst01)
  integer :: irst01
 end function
end interface

interface generate_name03
 function ifunc04(if04_arg01) result(irst04)
  integer :: if04_arg01
  integer :: irst04
 end function
end interface

type generate_name03
 procedure(integer), pointer, nopass :: i03
end type

type (generate_name03)      :: t03

procedure(ifunc01), pointer :: ifunc01p

ifunc01p => ifunc01

t03 = generate_name03(ifunc01)  
if (t03%i03()/=100) print *,201
t03 = generate_name03(ifunc01p) 
if (t03%i03()/=100) print *,202
print *,'pass'

end

function ifunc01() result(irst01)
 integer :: irst01
 irst01 = 100
end function

function ifunc04(if04_arg01) result(irst04)
 integer :: if04_arg01
 integer :: irst04
 irst04 = if04_arg01
end function
