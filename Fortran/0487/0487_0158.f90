subroutine s1
integer,target:: t(3 ,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
integer,pointer::p(:,:)

p=> t(1:2,:)

do concurrent( k=1:3)
t(2:3,k)= p(1:2, k)
end do
if (any([t]/=[1,1,2,4,4,5,7,7,8])) print *,101
end
call s1
print *,'pass'
end
