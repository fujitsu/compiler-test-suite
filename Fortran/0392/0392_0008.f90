subroutine s1
integer,target::t(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
integer,pointer,contiguous::p2(:,:)

p2(1:1,1:9)=>t(:,:)
if (any(p2/=reshape(t,[1,9]))) print *,101
end
call s1
print *,'pass'
end
