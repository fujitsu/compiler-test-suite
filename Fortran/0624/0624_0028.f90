subroutine s1
integer,allocatable:: a(:)
a=[2,3]
if (a(1)/=2)print *,101
if (a(2)/=3)print *,101
end
subroutine s2
integer,allocatable:: a(:,:,:)
a=reshape([(k,k=1,24)],[2,3,4])
if (any(a/=reshape([(k,k=1,24)],[2,3,4])))print *,201
end
subroutine s3
integer,allocatable:: a(:,:,:),b(:,:,:),c(:,:,:)
a=reshape([(k,k=1,24)],[2,3,4])
if (any(a/=reshape([(k,k=1,24)],[2,3,4])))print *,301
allocate(b(-2:-1,-3:-1,-4:-1),source=a)
if (any(lbound(b)/=[-2,-3,-4]))print *,301
if (any(b/=reshape([(k,k=1,24)],[2,3,4])))print *,302
c=b
if (any(lbound(b)/=[-2,-3,-4]))print *,303
if (any(c/=reshape([(k,k=1,24)],[2,3,4])))print *,303
end
call s1
call s2
call s3
print *,'pass'
end
