type t
integer::i
end type
class(t),allocatable::tt(:),yy(:),xx
type(t),allocatable::ttt(:),yyy(:),xxx
class(t),allocatable::res1(:)
type(t),allocatable::res2(:)
integer::j
j=3
allocate(tt(6),ttt(6))
allocate(res1(6),res2(6))
allocate(xx,xxx)
xx%i=0
xxx%i=0
tt%i=[1,2,3,4,5,6]
ttt%i=[1,2,3,4,5,6]
res1%i=[4,5,6,0,0,0]
res2%i=[4,5,6,0,0,0]
yy=eoshift(tt,shift=j,boundary=xx)
yyy=eoshift(ttt,shift=j,boundary=xxx)
select type (zz=>yy)
class is(t)
if(any(yy%i/=res1%i)) print *,'err1'
class default
print *,'ng1'
end select
if(any(yyy%i/=res2%i)) print *,'err2'
print *,'pass'
end

