subroutine s1
type x
 integer::x11
end type
type,extends(x):: y
 integer::y11
end type
type,extends(y):: z
 integer::z11
end type

class(x),contiguous,pointer::pp(:,:,:,:)
class(x),contiguous,pointer::p5(:,:,:,:,:)
class(x),contiguous,pointer::p4(:,:,:,:)
class(x),contiguous,pointer::p3(:,:,:)
class(x),contiguous,pointer::p2(:,:)
class(x),contiguous,pointer::p1(:)
k1=1;k2=2;k3=3;k4=4;k5=5;k6=6;k7=7;k8=8
allocate (z::pp(k2,k1,k1,k3))
k=0
select type(pp)
type is(z)
k=1
pp%z11=2
end select
if (k/=1) print *,605
p1(k6:k5+k6)=>pp
k=0
select type(p1)
type is(z)
if (any(p1%z11/=2)) print *,801
k=1
end select
if (k/=1) print *,505
if (any(ubound(p1)/=11)) print *,301
p2(k2:k3,k3:k5)=>pp
k=0
select type(p2)
type is(z)
if (any(p2%z11/=2)) print *,802
k=1
end select
if (k/=1) print *,502
if (any(ubound(p2)/=[3,5])) print *,302
p3(k2:k3,k6:k7-k1,k3:k4+1)=>pp
k=0
select type(p3)
type is(z)
if (any(p3%z11/=2)) print *,803
k=1
end select
if (k/=1) print *,503
if (any(ubound(p3)/=[3,6,5])) print *,303
p4(k2:k3,k6:k6,k7:k7,k3:k5)=>pp
k=0
select type(p4)
type is(z)
if (any(p4%z11/=2)) print *,804
k=1
end select
if (k/=1) print *,504
if (any(ubound(p4)/=[3,6,7,5])) print *,304
p5(k8:k5+k3,k2:k3,k6:k7-k1,k7:4+k3,k3:k5)=>pp
k=0
select type(p5)
type is(z)
if (any(p5%z11/=2)) print *,805
k=1
end select
if (k/=1) print *,505
if (any(ubound(p5)/=[8,3,6,7,5])) print *,305
end subroutine
call s1
print *,'pass'
end
