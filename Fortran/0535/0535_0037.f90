call s1
call s2
print *,'pass'
contains
subroutine s1
type t
character(1)::a
End type
class(t),allocatable::tt,res1(:)
type(t),allocatable::ttt,res2(:),yy(:)
allocate(tt,ttt)
allocate(yy(5))
tt%a="1"
ttt%a="1"
yy%a=["1","1","1","1","1"]
res1=spread(ttt,1,5)
res2=spread(ttt,1,5)
if(any(res2%a/=["1","1","1","1","1"])) print *,'err2'
select type (zz=>res1)
class is(t)
if(any(yy%a/=res1%a)) print *,'err1'
class default
print *,'ng1'
end select
end subroutine s1
subroutine s2
type t
character(1)::a
End type
class(t),allocatable::tt(:),res1(:,:)
type(t),allocatable::ttt(:),res2(:,:),yy(:,:)
allocate(tt(1),ttt(1))
allocate(yy(1,1))
tt%a="1"
ttt%a="1"
yy%a=reshape(["1"],[1,1])
res1=spread(ttt,1,1)
res2=spread(ttt,1,1)
if(any(res2%a/=reshape(["1"],[1,1]))) print *,'err2'
select type (zz=>res1)
class is(t)
if(any(yy%a/=res1%a)) print *,'err1'
class default
print *,'ng1'
end select
end subroutine s2
end
