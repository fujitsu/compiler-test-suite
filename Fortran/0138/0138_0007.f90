subroutine s1
integer,target::t(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
integer,pointer,contiguous::p1(:),p2(:,:)

k1=1
associate( a=> t )
p2(1:1,1:9)=>a(:,:)
if (any([p2]/=[t])) print *,101
p2(1:1,1:6)=>a(:,2:3)
if (any([p2]/=[t(:,2:3)])) print *,102
p2(1:1,1:6)=>a(:,k1+1:3)
if (any([p2]/=[t(:,K1+1:3)])) print *,103
end associate
end
call s1
print *,'pass'
end
