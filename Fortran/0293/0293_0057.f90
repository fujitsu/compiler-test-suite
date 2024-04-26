subroutine s1
integer,pointer,dimension(:,:,:)::p1,p2
allocate(p1(-2:3,3:6,-5:-1))
p1=reshape([(i,i=1,6*4*5)],[6,4,5])
p2(lbound(p1,dim=1):,lbound(p1,dim=2):,lbound(p1,dim=3):)=>p1(:,:,:)
if (any(lbound(p2)/=[-2,3,-5]))print *,'error-20',lbound(p2)
if (p2(-2,3,-5)/=1)print *,'error-21'
if (p2( 3,6,-1)/=6*4*5)print *,'error-22'
end
call s1
print *,'pass'
end

