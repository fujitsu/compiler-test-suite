call s1
call s2
print *,'pass'
contains
subroutine s1
integer,allocatable::aaa(:,:)
integer::bbb(1,2,3),ccc(1,2,3)
allocate(aaa(1,3))
bbb=1
ccc=2
aaa=sum(bbb**ccc,2)
if(any(aaa/=reshape([2,2,2],[1,3]))) print *,'err'
end subroutine s1
subroutine s2
type t
integer,allocatable::aaa(:,:)
end type
class(t),allocatable::ttt
integer::bbb(1,2,3),ccc(1,2,3)
allocate(ttt)
allocate(ttt%aaa(1,3))
bbb=1
ccc=2
ttt%aaa=sum(bbb*ccc,2)
if(any(ttt%aaa/=reshape([4,4,4],[1,3]))) print *,'err'
end
end
