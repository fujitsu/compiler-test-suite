subroutine s1(kk)
type x
 integer::x11
end type
type,extends(x):: y
 integer::y11
end type
type,extends(y):: z
 integer::z11
end type
type a1
 integer::a11
 type(z)::pp(2,1,3)
end type
type(a1),target::dd(kk)
class(x),contiguous,pointer::p5(:,:,:,:,:)
class(x),contiguous,pointer::p4(:,:,:,:)
class(x),contiguous,pointer::p3(:,:,:)
class(x),contiguous,pointer::p2(:,:)
class(x),contiguous,pointer::p1(:)
dd(kk)%pp%z11=2
p1(6:11)=>dd(kk)%pp
k=0
select type(p1)
type is(z)
if (any(p1%z11/=2)) print *,801
k=1
end select
if (k/=1) print *,505
if (any(ubound(p1)/=11)) print *,301
p2(2:3,3:5)=>dd(kk)%pp
k=0
select type(p2)
type is(z)
if (any(p2%z11/=2)) print *,802
k=1
end select
if (k/=1) print *,502
if (any(ubound(p2)/=[3,5])) print *,302
p3(2:3,6:6,3:5)=>dd(kk)%pp
k=0
select type(p3)
type is(z)
if (any(p3%z11/=2)) print *,803
k=1
end select
if (k/=1) print *,503
if (any(ubound(p3)/=[3,6,5])) print *,303
p4(2:3,6:6,7:7,3:5)=>dd(kk)%pp
k=0
select type(p4)
type is(z)
if (any(p4%z11/=2)) print *,804
k=1
end select
if (k/=1) print *,504
if (any(ubound(p4)/=[3,6,7,5])) print *,304
p5(8:8,2:3,6:6,7:7,3:5)=>dd(kk)%pp
k=0
select type(p5)
type is(z)
if (any(p5%z11/=2)) print *,805
k=1
end select
if (k/=1) print *,505
if (any(ubound(p5)/=[8,3,6,7,5])) print *,305
end subroutine
call s1(2)
print *,'pass'
end
