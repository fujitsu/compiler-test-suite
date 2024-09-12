module m1
contains
subroutine s1(a)
integer,allocatable:: a(:)
a=[2,3]
if (a(1)/=2)print *,101
if (a(2)/=3)print *,101
end subroutine
subroutine s2(a)
integer,allocatable:: a(:,:,:)
a=reshape([(k,k=1,24)],[2,3,4])
if (any(a/=reshape([(k,k=1,24)],[2,3,4])))print *,201
end subroutine
subroutine s3(a,b,c)
integer,allocatable:: a(:,:,:),b(:,:,:),c(:,:,:)
a=reshape([(k,k=1,24)],[2,3,4])
if (any(a/=reshape([(k,k=1,24)],[2,3,4])))print *,301
allocate(b(-2:-1,-3:-1,-4:-1),source=a)
if (any(lbound(b)/=[-2,-3,-4]))print *,301
if (any(b/=reshape([(k,k=1,24)],[2,3,4])))print *,302
c=b
if (any(lbound(b)/=[-2,-3,-4]))print *,303
if (any(c/=reshape([(k,k=1,24)],[2,3,4])))print *,303
end subroutine
end
use m1
integer,allocatable:: aaa(:)
integer,allocatable:: aa(:,:,:)
integer,allocatable:: a(:,:,:),b(:,:,:),c(:,:,:)
do n=1,10000
call s1(aaa)
call s2(aa)
call s3(a,b,c)
deallocate(b)
call s1(aaa)
call s2(aa)
call s3(a,b,c)
deallocate(b)
end do
print *,'pass'
end
