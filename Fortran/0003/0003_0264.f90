module m1
integer,pointer,dimension(:,:,:):: p1,p2,p3,pp2,pp1,pp3
integer,parameter::n2=10,n4=10,n6=10
integer,parameter::y1=2,y2=2,y3=1
integer::z=1
contains
subroutine       sub(a1,a2,a3,k2,k4,k6,k,ik1,ik2,ik3)
integer,dimension(:,:,:),intent(in),optional:: a1,a2,a3
if (z==0) then
  if (present(a1)) print *,701
  if (present(a2)) print *,701
  if (present(a3)) print *,701
  return
endif
if (.not.present(a1)) print *,601
if (.not.present(a2)) print *,602
if (.not.present(a3)) print *,603

k=sum(a1)+sum(a2)+sum(a3)
if (ik1==0) then
  if (loc(p1)/=loc(a1)) print *,101,k
else
  if (loc(p1)/=loc(a1)) print *,102,k
endif
if (ik2==0) then
  if (loc(p2)/=loc(a2)) print *,201,k
else
  if (loc(p2)/=loc(a2)) print *,202,k
endif
if (ik3==0) then
  if (loc(p3)/=loc(a3)) print *,301,k
else
  if (loc(p3)/=loc(a3)) print *,302,k
endif
end subroutine
end
call s
print *,'OK'
end

subroutine s
use m1
integer::a
allocate(pp1(n2,n4,n6))
p1=>pp1(:,:,::y1)
p1=1
k1=0
if (y1==2)k1=1
allocate(pp2(n2,n4,n6))
p2=>pp2(:,:,::y2)
p2=1
k2=0
if (y2==2)k2=1
allocate(pp3(n2,n4,n6))
p3=>pp3(:,:,::y3)
p3=1
k3=0
if (y3==2)k3=1
 call sub(p1,p2,p3,n2,n4,n6,a,k1,k2,k3)
if (a/=n2*n4*n6/y1+n2*n4*n6/y2+n2*n4*n6/y3) print *,201,a,n2*n4*n6/y1+n2*n4*n6/y2+n2*n4*n6/y3
z=0
 call sub(        k2=n2,k4=n4,k6=n6,k=a,ik1=k1,ik2=k2,ik3=k3)

end 

