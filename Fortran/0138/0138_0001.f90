subroutine s1
integer,target::t(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
integer,pointer,contiguous::p1(:),p2(:,:)

k1=1
p2(1:1,1:9)=>t(:,:)
if (any([p2]/=[t])) print *,101
p2(1:1,1:9)=>t(:,:)
if (any([p2]/=[t])) print *,102
p2(1:1,1:6)=>t(:,2:3)
if (any([p2]/=[t(:,2:3)])) print *,102
p2(1:1,1:6)=>t(:,k1+1:)
if (any([p2]/=[t(:,K1+1:)])) print *,102
end
call s1
print *,'pass'
end
