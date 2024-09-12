type t
integer::i
end type
class(t),allocatable::tt(:),yy(:,:),xx(:,:)
type(t),allocatable::ttt(:),yyy(:,:),xxx(:,:)
class(t),allocatable::res1(:,:)
type(t),allocatable::res2(:,:)
logical::l(2,3)
l=.true.
allocate(xx(2,3),xxx(2,3))
allocate(tt(6),ttt(6))
allocate(res1(2,3),res2(2,3))
tt%i=[1,2,3,4,5,6]
ttt%i=[1,2,3,4,5,6]
xx%i=reshape([6,5,4,3,2,1],[2,3])
xxx%i=reshape([6,5,4,3,2,1],[2,3])
res1%i=reshape([1,2,3,4,5,6],[2,3])
res2%i=reshape([1,2,3,4,5,6],[2,3])
yy=unpack(tt,mask=l,field=xx)
yyy=unpack(ttt,mask=l,field=xxx)
select type (zz=>yy)
class is(t)
if(any(yy%i/=res1%i)) print *,'err1'
class default
print *,'ng1'
end select
if(any(yyy%i/=res2%i)) print *,'err2'
print *,'pass'
end

