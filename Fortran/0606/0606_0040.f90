module mod1
type base
 integer::i = 0
 contains
  procedure,pass(dmy2):: prc=>fun1
  procedure,pass(dmy2):: prc1=>fun0
  generic,public :: operator(.gt.) => prc
end type

type inherit
 integer :: j = 0
 contains
  procedure,pass(dmy2):: prc2 => fun2
  generic,public :: operator(.gt.) => prc2
end type 

contains
function fun0(dmy,dmy2)
 class(base),intent(in) :: dmy2
 integer,intent(in) :: dmy
 logical :: fun0
 
 if(dmy>(dmy2%i+2)) then
  fun0 = .true.
 else
  fun0 = .false.
 endif
end function

function fun1(dmy,dmy2)
 class(base),intent(in) :: dmy2
 integer,intent(in) :: dmy
 logical :: fun1
 
 if(dmy>dmy2%i) then
  fun1 = .true.
 else
  fun1 = .false.
 endif
end function

function fun2(dmy,dmy2)
 class(inherit),intent(in) :: dmy2
 integer,intent(in) :: dmy
 logical :: fun2
 if(dmy>dmy2%j) then
  fun2 = .true.
 else
  fun2 = .false.
 endif
end function

integer function check()
type(inherit) :: obj
obj%j=10
if(15.gt.obj) then
 check = 1
else
 check = 0
endif
end function
end module

use mod1
type(base) :: obj
obj%i=10
if(15>obj .and. check()==1) print*,"PASS"
end
