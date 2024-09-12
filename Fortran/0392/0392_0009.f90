subroutine s1
type x
integer::x1
character::t(3,3)=reshape(['1','2','3','4','5','6','7','8','9'],[3,3])
integer::x2
end type
type (x),target:: v
character,pointer,contiguous::p2(:,:)
p2(1:1,1:9)=>v%t(:,:)
if (any(p2/=reshape(v%t,[1,9]))) print *,101
p2(1:1,1:9)=>v%t(:,:)
if (any(p2/=reshape(v%t,[1,9]))) print *,101
end
call s1
print *,'pass'
end
