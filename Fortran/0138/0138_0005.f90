subroutine s1
type x
integer::x1
character::t(3,3)=reshape(['1','2','3','4','5','6','7','8','9'],[3,3])
character,pointer,contiguous::y(:,:)
integer::x2
end type
type (x),target:: v
character,pointer,contiguous::p2(:,:)
allocate(v%y(3,3))
v%y=reshape(['1','2','3','4','5','6','7','8','9'],[3,3])
k1=1
p2(1:1,1:9)=>v%t(:,:)
if (any([p2]/=[v%t])) print *,101
p2(1:1,1:9)=>v%t(:,:)
if (any([p2]/=[v%t])) print *,102
p2(1:1,1:6)=>v%t(:,2:3)
if (any([p2]/=[v%t(:,2:3)])) print *,102
p2(1:1,1:6)=>v%t(:,k1+1:3)
if (any([p2]/=[v%t(:,K1+1:3)])) print *,102
p2(1:1,1:9)=>v%y(:,:)
if (any([p2]/=[v%y])) print *,201
p2(1:1,1:9)=>v%y(:,:)
if (any([p2]/=[v%y])) print *,202
p2(1:1,1:6)=>v%y(:,2:3)
if (any([p2]/=[v%y(:,2:3)])) print *,402
p2(1:1,1:6)=>v%y(:,k1+1:3)
if (any([p2]/=[v%y(:,K1+1:3)])) print *,302
end
call s1
print *,'pass'
end
