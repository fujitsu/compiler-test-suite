module mod1
type t1
 integer::i=0
 contains
 procedure,private::prc1=>fun1
 procedure,public ::prc2=>fun2
 
 generic :: gen => prc1,prc2
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
  fun2 = dmy%gen(1)
 else
  fun2=0
 endif
 endselect
end function
end module

use mod1,only:tnew=>t2,t1
class(tnew),pointer::mptr
type(tnew),target::tgt2
tgt2 = tnew(2,3)
mptr => tgt2

if(mptr%gen(.true.)/=1) then
 print*,'101'
else
 print*,'PASS'
endif

end 
