module m1
type ty1
integer::arr1(3)
end type
type ty2
real::arr2(2)
end type
type ty3
logical::arr3(5)
end type
end module

program main
use m1
interface gnr
function fun1(d1,d2)
real :: fun1
logical,pointer,intent(in)::d1(:)
real,pointer,intent(in)::d2(:)
end function
function fun2(d1,d2)
integer::fun2
integer,pointer,intent(in)::d1(:)
logical,pointer,intent(in)::d2(:)
end function
function fun3(d1,d2)
logical::fun3
real,pointer,intent(in)::d1(:)
integer,pointer,intent(in)::d2(:)
end function
end interface

type(ty1),target::t1
type(ty2),target::r1
type(ty3),target::c1
t1%arr1=10
r1%arr2=10.5
c1%arr3=.false.
if(gnr(t1%arr1,c1%arr3(2:4))==30)print*,"pass"
if(gnr(c1%arr3(1:3),r1%arr2)==21.0)print*,"pass"
if(gnr(r1%arr2,t1%arr1(2:3)))print*,"pass"
end

function fun1(d1,d2)
real :: fun1
logical,pointer,intent(in)::d1(:)
real,pointer,intent(in)::d2(:)
if (.not.associated(d1))print*,105
if (.not.associated(d2))print*,106
if (size(d1)/=3 .or. size(d2)/=2)print*,107
if (ubound(d1,1)/=3 .or. ubound(d2,1)/=2)print*,108
if (.not.d1(3))print*,109
d1(1)=.true.
fun1=d2(2)*2
end function
function fun2(d1,d2)
integer::fun2
integer,pointer,intent(in)::d1(:)
logical,pointer,intent(in)::d2(:)
if (.not.associated(d1))print*,101
if (.not.associated(d2))print*,102
if (size(d1)/= size(d2))print*,103
if (ubound(d1,1)/=3 .or. ubound(d2,1)/=3)print*,104
d2(2)=.true.
fun2=d1(2)*3
end function
function fun3(d1,d2)
logical :: fun3
real,pointer,intent(in)::d1(:)
integer,pointer,intent(in)::d2(:)
if (.not.associated(d1))print*,110
if (.not.associated(d2))print*,111
if (size(d1)/=2)print*,112
if (size(d2)/=2 .or. ubound(d2,1)/=2)print*,113
fun3 = .true.
end function
