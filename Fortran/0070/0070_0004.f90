subroutine s1
integer,target::t(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
integer,target::y(3)=reshape([1,2,3],[3])
integer,pointer,contiguous::p1(:),p2(:,:)

k1=1

associate( a=>t(:,:) )
p2(1:1,1:9)=>a
if (any([p2]/=[t])) print *,101,p2,t
end associate
end
call s1
print *,'pass'
end
