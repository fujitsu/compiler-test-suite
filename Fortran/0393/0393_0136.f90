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
type(a1),pointer::dd(:)
type et
class(*),contiguous,pointer::p5(:,:,:,:,:)
class(*),contiguous,pointer::p4(:,:,:,:)
class(*),contiguous,pointer::p3(:,:,:)
class(*),contiguous,pointer::p2(:,:)
class(*),contiguous,pointer::p1(:)
end type
type(et),pointer::ee(:)
allocate(ee(2),dd(2))
dd(kk)%pp%z11=2
ee(2)%p1(6:11)=>dd(kk)%pp
k=0
select type(es=>ee(2)%p1)
type is(z)
if (any(es%z11/=2)) print *,801
k=1
end select
if (k/=1) print *,505
if (any(ubound(ee(2)%p1)/=11)) print *,301
ee(2)%p2(2:3,3:5)=>dd(kk)%pp
k=0
select type(es=>ee(2)%p2)
type is(z)
if (any(es%z11/=2)) print *,802
k=1
end select
if (k/=1) print *,502
if (any(ubound(ee(2)%p2)/=[3,5])) print *,302
ee(2)%p3(2:3,6:6,3:5)=>dd(kk)%pp
k=0
select type(es=>ee(2)%p3)
type is(z)
if (any(es%z11/=2)) print *,803
k=1
end select
if (k/=1) print *,503
if (any(ubound(ee(2)%p3)/=[3,6,5])) print *,303
ee(2)%p4(2:3,6:6,7:7,3:5)=>dd(kk)%pp
k=0
select type(es=>ee(2)%p4)
type is(z)
if (any(es%z11/=2)) print *,804
k=1
end select
if (k/=1) print *,504
if (any(ubound(ee(2)%p4)/=[3,6,7,5])) print *,304
ee(2)%p5(8:8,2:3,6:6,7:7,3:5)=>dd(kk)%pp
k=0
select type(es=>ee(2)%p5)
type is(z)
if (any(es%z11/=2)) print *,805
k=1
end select
if (k/=1) print *,505
if (any(ubound(ee(2)%p5)/=[8,3,6,7,5])) print *,305
end subroutine
call s1(2)
print *,'pass'
end
