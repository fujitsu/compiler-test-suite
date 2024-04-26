subroutine s1
integer,pointer,dimension(:,:,:)::p1,p2
integer,pointer,dimension(:,:)::p3
integer,allocatable,target ,dimension(:,:,:)::a
allocate(p1(-2:3,3:6,-5:-1))
p1=reshape([(i,i=1,6*4*5)],[6,4,5])
if (p1(-2,3,-5)/=1)print *,'error-1'
if (p1( 3,6,-1)/=6*4*5)print *,'error-2'
p2(lbound(p1,dim=1):,lbound(p1,dim=2):,lbound(p1,dim=3):)=>p1
if (p2(-2,3,-5)/=1)print *,'error-11'
if (p2( 3,6,-1)/=6*4*5)print *,'error-12'
p2(lbound(p1,dim=1):,lbound(p1,dim=2):,lbound(p1,dim=3):)=>p1(:,:,:)

if (p2(-2,3,-5)/=1)print *,'error-21'
if (p2( 3,6,-1)/=6*4*5)print *,'error-22'
p3(lbound(p1,dim=1):,lbound(p1,dim=3):)=>p1(:,6,:)
if (p3(-2,-5)/=19)print *,'error-31',p3(-2,-5),p1(-2,6,-5)
if (p3( 3,-1)/=6*4*5)print *,'error-32'
p2=>p1(:,:,:)
if (p2(1,1,1)/=1)print *,'error-51'
if (p2(6,4,5)/=6*4*5)print *,'error-52'

p1(lbound(p1,dim=1):,lbound(p1,dim=2):,lbound(p1,dim=3):)=>p1(:,:,:)

if (p1(-2,3,-5)/=1)print *,'error-41',p1(-2,3,-5)
if (p1( 3,6,-1)/=6*4*5)print *,'error-42'
allocate(a(-2:3,3:6,-5:-1))
a=p1
p2(lbound(a,dim=1):,lbound(a,dim=2):,lbound(a,dim=3):)=>a
if (p2(-2,3,-5)/=1)print *,'error-111'
if (p2( 3,6,-1)/=6*4*5)print *,'error-112'
p2(lbound(a,dim=1):,lbound(a,dim=2):,lbound(a,dim=3):)=>a(:,:,:)
if (p2(-2,3,-5)/=1)print *,'error-121'
if (p2( 3,6,-1)/=6*4*5)print *,'error-122'
p3(lbound(a,dim=1):,lbound(a,dim=3):)=>a(:,6,:)
if (p3(-2,-5)/=19)print *,'error-131',p3(-2,-5),p1(-2,6,-5)
if (p3( 3,-1)/=6*4*5)print *,'error-132'
p2=>p1(:,:,:)
if (p2(1,1,1)/=1)print *,'error-151'
if (p2(6,4,5)/=6*4*5)print *,'error-152'
p1(lbound(a,dim=1):,lbound(a,dim=2):,lbound(a,dim=3):)=>a(:,:,:)
if (p1(-2,3,-5)/=1)print *,'error-141'
if (p1( 3,6,-1)/=6*4*5)print *,'error-142'
end
call s1
print *,'pass'
end

