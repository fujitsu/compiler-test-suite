module m1
integer,pointer::p1(:)
end
subroutine s1
use m1
integer,target::t1(2)=2
integer,pointer::p10(:,:,:,:,:,:,:,:,:,:)
allocate(p1(2))
p1=1
p10(1:1,2:2,3:3,4:4,5:5,6:6,7:7,8:8,9:9,10:11)=> p1
if (any(lbound(p10)/=[1,2,3,4,5,6,7,8,9,10]))print *,101
if (any(p10(1,2,3,:,:,:,:,:,:,:)/=1))print *,102
p10(1:1,2:2,3:3,4:4,5:5,6:6,7:7,8:8,9:9,10:11)=> t1
if (any(lbound(p10)/=[1,2,3,4,5,6,7,8,9,10]))print *,201
if (any(p10(1,2,3,:,:,:,:,:,:,:)/=2))print *,202
end
call s1
print *,'pass'
end
