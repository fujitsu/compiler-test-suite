type t
integer::i
end type
class(t),allocatable::tt(:),yy(:)
type(t),allocatable::ttt(:),yyy(:)
class(t),allocatable::res1(:)
type(t),allocatable::res2(:)
integer::j
j=2
allocate(tt(6),ttt(6))
allocate(res1(6),res2(6))
tt%i=[1,2,3,4,5,6]
ttt%i=[1,2,3,4,5,6]
res1%i=[3,4,5,6,1,2]
res2%i=[3,4,5,6,1,2]
yy=cshift(tt,shift=j)
yyy=cshift(ttt,shift=j)
select type (zz=>yy)
class is(t)
if(any(yy%i/=res1%i)) print *,'err1'
class default
print *,'ng1'
end select
if(any(yyy%i/=res2%i)) print *,'err2'
print *,'pass'
end

