subroutine s1
integer,allocatable::a1(:,:,:),b1(:,:,:)
integer,allocatable::a2(:,:,:),b2(:,:,:)
integer,allocatable::a3(:,:,:),b3(:,:,:)
integer(8)::addr,addr2
k1=1;k2=2;k3=3;k4=4;k5=5;k6=6
allocate(a1(k2:k3+1,k1:k5+1,k3:k6+1),b1(k2-1:k3+1,k1-1:k5+1,k3-1:k6+1),&
         a2(k2:k3+1,k1:k5+1,k3:k6+1),b2(k2-1:k3+1,k1-1:k5+1,k3-1:k6+1),&
         a3(k2:k3+1,k1:k5+1,k3:k6+1),b3(k2-1:k3+1,k1-1:k5+1,k3-1:k6+1),&
   stat=k)
if (k/=0)print *,100
addr=loc(a1)
addr2=loc(b1)
if (any(ubound(a1)/=[4,6,7]))print *,101
if (any(lbound(a1)/=[2,1,3]))print *,103
if (    size(a1)/=90)print *,104
if (addr/=loc(a1))print *,102
if (any(ubound(b1)/=[4,6,7]))print *,201
if (any(lbound(b1)/=[2,1,3]-1))print *,203
if (    size(b1)/=28*6)print *,204
if (addr2/=loc(b1))print *,202

if (any(ubound(a2)/=[4,6,7]))print *,101
if (any(lbound(a2)/=[2,1,3]))print *,103
if (    size(a2)/=90)print *,104
if (any(ubound(b2)/=[4,6,7]))print *,201
if (any(lbound(b2)/=[2,1,3]-1))print *,203
if (    size(b2)/=28*6)print *,204
if (any(ubound(a3)/=[4,6,7]))print *,101
if (any(lbound(a3)/=[2,1,3]))print *,103
if (    size(a3)/=90)print *,104
if (any(ubound(b3)/=[4,6,7]))print *,201
if (any(lbound(b3)/=[2,1,3]-1))print *,203
if (    size(b3)/=28*6)print *,204


allocate(a1(k2:k3+1,k1:k5+1,k3:k6+1),b1(k2-1:k3+1,k1-1:k5+1,k3-1:k6+1),&
         a2(k2:k3+1,k1:k5+1,k3:k6+1),b2(k2-1:k3+1,k1-1:k5+1,k3-1:k6+1),&
         a3(k2:k3+1,k1:k5+1,k3:k6+1),b3(k2-1:k3+1,k1-1:k5+1,k3-1:k6+1),&
   stat=k)
if (k==0)print *,200
if (any(ubound(a1)/=[4,6,7]))print *,101
if (any(lbound(a1)/=[2,1,3]))print *,103
if (    size(a1)/=90)print *,104
if (addr/=loc(a1))print *,102
if (any(ubound(b1)/=[4,6,7]))print *,201
if (any(lbound(b1)/=[2,1,3]-1))print *,203
if (    size(b1)/=28*6)print *,204
if (addr2/=loc(b1))print *,202

if (any(ubound(a2)/=[4,6,7]))print *,101
if (any(lbound(a2)/=[2,1,3]))print *,103
if (    size(a2)/=90)print *,104
if (any(ubound(b2)/=[4,6,7]))print *,201
if (any(lbound(b2)/=[2,1,3]-1))print *,203
if (    size(b2)/=28*6)print *,204
if (any(ubound(a3)/=[4,6,7]))print *,101
if (any(lbound(a3)/=[2,1,3]))print *,103
if (    size(a3)/=90)print *,104
if (any(ubound(b3)/=[4,6,7]))print *,201
if (any(lbound(b3)/=[2,1,3]-1))print *,203
if (    size(b3)/=28*6)print *,204
end
call s1
print *,'pass'
end
