module m1
type x
 integer::x11
end type
type,extends(x):: y
 integer::y11
end type
type,extends(y):: z
 integer::z11
end type
contains
function f(u)
class(x),target,contiguous::u(:)
class(x),pointer,contiguous::f(:)
f=>u
end function
subroutine s1(kk)
class(x),contiguous,pointer::pp(:)
type w
integer::w1
class(x),contiguous,pointer::p5(:,:,:,:,:)
class(x),contiguous,pointer::p4(:,:,:,:)
class(x),contiguous,pointer::p3(:,:,:)
class(x),contiguous,pointer::p2(:,:)
class(x),contiguous,pointer::p1(:)
end type
type(w),pointer:: wx(:)
allocate( wx(kk))
allocate (z::pp(6))
k=0
select type(pp)
type is(z)
k=1
pp%z11=2
end select
if (k/=1) print *,605
wx(kk)%p1(6:11)=>f(pp)
k=0
select type(dx=>wx(kk)%p1)
type is(z)
if (any(dx%z11/=2)) print *,801
k=1
end select
if (k/=1) print *,505
if (any(ubound(wx(kk)%p1)/=11)) print *,301
wx(kk)%p2(2:3,3:5)=>f(pp)
k=0
select type(dx=>wx(kk)%p2)
type is(z)
if (any(dx%z11/=2)) print *,802
k=1
end select
if (k/=1) print *,502
if (any(ubound(wx(kk)%p2)/=[3,5])) print *,302
wx(kk)%p3(2:3,6:6,3:5)=>f(pp)
k=0
select type(dx=>wx(kk)%p3)
type is(z)
if (any(dx%z11/=2)) print *,803
k=1
end select
if (k/=1) print *,503
if (any(ubound(wx(kk)%p3)/=[3,6,5])) print *,303
wx(kk)%p4(2:3,6:6,7:7,3:5)=>f(pp)
k=0
select type(dx=>wx(kk)%p4)
type is(z)
if (any(dx%z11/=2)) print *,804
k=1
end select
if (k/=1) print *,504
if (any(ubound(wx(kk)%p4)/=[3,6,7,5])) print *,304
wx(kk)%p5(8:8,2:3,6:6,7:7,3:5)=>f(pp)
k=0
select type(dx=>wx(kk)%p5)
type is(z)
if (any(dx%z11/=2)) print *,805
k=1
end select
if (k/=1) print *,505
if (any(ubound(wx(kk)%p5)/=[8,3,6,7,5])) print *,305
end subroutine
end
use m1
call s1(2)
print *,'pass'
end
