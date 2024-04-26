subroutine s1
integer,pointer::p1(:,:)
integer,pointer,contiguous::p2(:,:,:)
allocate(p2(2,3,4))
p2=reshape([(k,k=1,24)],[2,3,4])
p1(11:14,11:16)=>p2
if (any(ubound(p1)/=[14,16])) print *,ubound(p1)
if (any(ubound(p2)/=[2,3,4])) print *,ubound(p2)
if (any(p1/=reshape([(k,k=1,24)],[4,6]))) print *,201
end
call s1
print *,'pass'
end


