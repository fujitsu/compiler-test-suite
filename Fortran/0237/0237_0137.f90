module bank
integer,allocatable:: a(:,:,:), a1(:,:,:)
integer,pointer    :: p(:,:,:), p1(:,:,:)
!$OMP THREADPRIVATE(a,p)
logical,allocatable:: mask(:,:,:)
end module bank
subroutine s1(n1,n2,n3,n4,n5)
use bank
allocate(a(3,4,5),p(3,4,5),mask(3,4,5))
mask=.true.
allocate(a1(3,4,5),p1(3,4,5))
a=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))
if (any(ubound(a)/=(/3,4,5/)))print *,101
p=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))
if (any(ubound(p)/=(/3,4,5/)))print *,102
where (mask)
a1=a
p1=p
end where
call sub(a1)
call sub(p1)
end
call       s1(1,2,3,4,5)
print *,'pass'
end
subroutine sub(d)
integer::d(3*4*5)
if (any(d/=(/(k,k=1,3*4*5)/))) print *,201
end

