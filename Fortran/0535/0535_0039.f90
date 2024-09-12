type t
integer::i
end type
class(t),allocatable::class(:,:),aaa(:,:),res1(:,:)
type(t),allocatable::type(:,:),bbb(:,:),res2(:,:)
allocate(class(3,3),type(3,3))
allocate(res1(3,3),res2(3,3))
class%i=reshape([1,2,3,4,5,6,7,8,9],[3,3])
type%i=reshape([1,2,3,4,5,6,7,8,9],[3,3])
res1%i=reshape([1, 4, 7, 2, 5, 8, 3, 6, 9],[3,3])
res2%i=reshape([1, 4, 7, 2, 5, 8, 3, 6, 9],[3,3])
aaa=transpose(class)
bbb=transpose(type)
if(any(bbb%i/=res2%i)) print *,'err1'
select type (zz=>aaa)
class is(t)
if(any(aaa%i/=res1%i)) print *,'err2'
class default
print *,'ng1'
end select
print *,'pass'
end

