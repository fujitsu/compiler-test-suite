subroutine s1
integer,pointer,dimension(:,:,:)::p1
allocate(p1(-2:3,3:6,-5:-1))
p1=reshape([(i,i=1,6*4*5)],[6,4,5])
if (p1(-2,3,-5)/=1)print *,'error-1'
if (p1( 3,6,-1)/=6*4*5)print *,'error-2'
if (any(lbound(p1)/=[-2,3,-5]))print *,39,lbound(p1)
p1(lbound(p1,dim=1):,lbound(p1,dim=2):,lbound(p1,dim=3):)=>p1(:,:,:)
if (any(lbound(p1)/=[-2,3,-5]))print *,40,lbound(p1)
if (p1(-2,3,-5)/=1)print *,'error-41',p1(-2,3,-5)
if (p1( 3,6,-1)/=6*4*5)print *,'error-42'
end
call s1
print *,'pass'
end

