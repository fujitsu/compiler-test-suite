module bank
integer,allocatable:: a(:,:,:), a1(:,:,:)
integer,pointer    :: p(:,:,:), p1(:,:,:)
!$OMP THREADPRIVATE(a,p)
end module bank
subroutine s1(n1,n2,n3,n4,n5)
use bank
allocate(a(3,4,5),p(3,4,5))
allocate(a1(3,4,5),p1(3,4,5))
a=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))
if (any(ubound(a)/=(/3,4,5/)))print *,101
p=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))
if (any(ubound(p)/=(/3,4,5/)))print *,102
forall (k3=1:5)
forall (k2=1:4)
forall (k1=1:3)
a1(k1,k2,k3)=a(k1,k2,k3)
p1(k1,k2,k3)=p(k1,k2,k3)
end forall
end forall
end forall
call sub(a1)
call sub(p1)
forall (k3=1:5)
forall (k2=1:4)
forall (k1=1:3)
a1(k1,k2,k3)=a(k1,k2,k3)+a1(k1,k2,k3)
p1(k1,k2,k3)=p(k1,k2,k3)+p1(k1,k2,k3)
end forall
end forall
end forall
call subx(a1)
call subx(p1)
end
call       s1(1,2,3,4,5)
print *,'pass'
end
subroutine sub(d)
integer::d(3*4*5)
if (any(d/=(/(k,k=1,3*4*5)/))) print *,201
end
subroutine subx(d)
integer::d(3*4*5)
if (any(d/=2*(/(k,k=1,3*4*5)/))) print *,201
end

