module m
contains
subroutine sub(a,b,c,d)
integer,contiguous::a(:)
integer,contiguous::b(:)
integer::c(5)
integer::d(3)
integer::k=1
call sub2(a(1:5:k),b(1:3:k+1),c(1:5:k),d(1:3:k+1))
end subroutine 
subroutine sub2(a,b,c,d)
integer::a(5)
integer::b(2)
integer::c(5)
integer::d(2)
a =a +10
b =b +10
c =c +10
d =d +10
end subroutine 
end module
use m
integer::x(5)=[1,2,3,4,5]
integer::y(5)=[1,2,3,4,5]
integer::x2(5)=[1,2,3,4,5]
integer::y2(5)=[1,2,3,4,5]
integer::k=1
call sub(x(1:5:k),y(1:5:k+1), x2(1:5:k),y2(1:5:k+1))
if(any(x /= [11,12,13,14,15]))print*,"101"
if(any(y/= [11,2,3,4,15]))print*,"102",y
if(any(x2 /= [11,12,13,14,15]))print*,"103",x2
if(any(y2/= [11,2,3,4,15]))print*,"104",y2
print*,"pass"
end
