module m1
integer,parameter::k=4
real(k),parameter:: r1(*,*)=reshape([.1_k,.2_k,.3_k,.4_k,.5_k,.6_k,.7_k,.8_k,.9_k],[3,3])
real(k),pointer:: p1(:,:),p2(:,:)
real(k):: w1(3,3),w2(3,3),w3(3,3)
contains
subroutine s000(p1)
real(k),pointer:: p1(:,:)
w1=matmul(w2,w3)+p1
if (any(abs([w1-r1]-&
[0.30,0.36,0.42,0.66,0.81,0.96,1.01,1.26,1.50]) > 0.2) ) print *,100,w1
end subroutine
subroutine s001(p1)
real(k),pointer:: p1(:,:)
w1=matmul(p1,w2)
if (any(abs([w1]-&
[0.30,0.36,0.42,0.66,0.81,0.96,1.01,1.26,1.50]) > 0.2) ) print *,101,w1
end subroutine
subroutine s002(p1)
real(k),pointer:: p1(:,:)
w1=matmul(w2,p1)
if (any(abs([w1]-&
[0.30,0.36,0.42,0.66,0.81,0.96,1.01,1.26,1.50]) > 0.2) ) print *,102,w1
end subroutine
subroutine s003(p1)
real(k),pointer:: p1(:,:)
p1=matmul(w1,w2)
if (any(abs([p1]-&
[0.30,0.36,0.42,0.66,0.81,0.96,1.01,1.26,1.50]) > 0.2) ) print *,103,11
end subroutine
end

use m1
allocate(p2(3*3,3),source=0._k)
p1=>p2(1:5:2,:)
p1=r1
w1=0
w2=r1
w3=r1
call s000(p1)
w1=0
w2=r1
call s001(p1)
w1=0
w2=r1
call s002(p1)
w1=r1
w2=r1
call s003(p1)
print *,'pass'
end