module mod1
type t1
 integer::i=0
 contains
 procedure,private::prc1=>fun1
 procedure,public ::prc2=>fun2
end type

type,extends(t1)::t2
 integer::j=0
end type

contains
integer function fun1(dmy,a)
 class(t1) :: dmy
 integer::a
 if(sizeof(dmy)/=8) print*,'101'
 fun1=a
end function

integer function fun2(dmy,a)
 class(t1) :: dmy
 logical :: a
 selecttype(dmy)
 type is (t2)
 if(a .eqv. .true.) then
  fun2 = dmy%prc1(1)
 else
  fun2=0
 endif
 endselect
end function
end module

program main
use mod1
type(t2),target::tgt2(3,4,4,4)
tgt2 = t2(1,2)
tgt2(1,2,3,4) = t2(2,3)
if(ff(tgt2)==1) then
 print*,'PASS'
else
 print*,'201'
endif

contains
function ff(mptr)
class(t1)::mptr(3,4,4,4)
integer::ff

select type(mptr)
type is(t1)
 print*,'102'
class is(t2)
 if(mptr(1,2,3,4)%prc2(.true.)/=1)THEN 
 ff=0
else
 ff=1
endif
class default
 print*,'103'
end select
end function
end 
