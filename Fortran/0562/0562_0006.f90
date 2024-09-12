module m1
type ty1
integer::arr(4)
end type
type ty2
real::rr(4)
type(ty1)::obj
end type
contains
integer function fun(p1,p2)
integer,pointer,intent(in)::p1(:)
real,pointer,intent(in)::p2(:)
if (.NOT. associated(p1))print*,"error"
if (.NOT. associated(p2))print*,"error"
if (size(p1) /= size(p2))print*,101
if (ubound(p1,1)/=2 .or. ubound(p1,1)/=2)print*,103
p1 = 10
fun=10
end function
end module

use m1
type(ty2),target :: tar
integer::ii
ii= fun(tar%obj%arr(2:3),tar%rr(1:2))
if(ii==10)print*,"Pass"
if (tar%obj%arr(3) /= 10)print*,102
end 
