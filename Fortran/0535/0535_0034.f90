type t
integer::i
end type
class(t),allocatable::tt(:,:),yy(:),xx(:)
type(t),allocatable::ttt(:,:),yyy(:),xxx(:)
class(t),allocatable::res1(:)
type(t),allocatable::res2(:)
logical::l
l=.true.
allocate(xx(6),xxx(6))
allocate(tt(2,3),ttt(2,3))
allocate(res1(6),res2(6))
tt%i=reshape([1,2,3,4,5,6],[2,3])
ttt%i=reshape([1,2,3,4,5,6],[2,3])
xx%i=[6,5,4,3,2,1]
xxx%i=[6,5,4,3,2,1]
res1%i=[1,2,3,4,5,6]
res2%i=[1,2,3,4,5,6]
yy=pack(tt,mask=l,vector=xx)
yyy=pack(ttt,mask=l,vector=xxx)
select type (zz=>yy)
class is(t)
if(any(yy%i/=res1%i)) print *,'err1'
class default
print *,'ng1'
end select
if(any(yyy%i/=res2%i)) print *,'err2'
print *,'pass'
end

