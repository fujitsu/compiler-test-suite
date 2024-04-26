subroutine s1
integer,target::t(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
integer,target::y(3)=reshape([1,2,3],[3])
integer,pointer,contiguous::p1(:),p2(:,:)

k1=1

associate( a=>t(:,:) )
p2(1:1,1:9)=>a
if (any([p2]/=[t])) print *,101
end associate
associate (a=>t(:,2:3))
p2(1:1,1:6)=>a
if (any([p2]/=[t(:,2:3)])) print *,102
end associate
associate(a=>t(:,k1+1:3))
p2(1:1,1:6)=>a
if (any([p2]/=[t(:,K1+1:3)])) print *,103
end associate
associate (a=>t(2:3,1))
p1(1:2)=>a
if (any(p1/=t(2:3,1))) print *,104
end associate
p1(1:2)=>t(2:3,1)
if (any(p1/=t(2:3,1))) print *,105
associate (a=>y(2:3))
p1(1:2)=>a
if (any(p1/=y(2:3))) print *,114
end associate
p1(1:2)=>y(2:3)
if (any(p1/=y(2:3))) print *,115
end
call s1
print *,'pass'
end
