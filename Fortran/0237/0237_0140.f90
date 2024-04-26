module bank
real,allocatable :: a1(:,:),a2(:,:),a3(:,:)
real,pointer     :: p1(:,:),p2(:,:),p3(:,:)
!$OMP THREADPRIVATE(a1,a2,p1,p2)
end module bank
subroutine s1
use bank
allocate(a1(3,4),a2(4,3),a3(3,3))
allocate(p1(3,4),p2(4,3),p3(3,3))
a1=reshape((/(k,k=1,3*4*5)/),(/3,4/))
a2=reshape((/(k,k=1,3*4*5)/),(/4,3/))
p1=reshape((/(k,k=1,3*4*5)/),(/3,4/))
p2=reshape((/(k,k=1,3*4*5)/),(/4,3/))
a3=matmul(a1,a2)
p3=matmul(p1,p2)
if (any(abs((/a3/)-(/70.,80.,90.,158.,184.,210.,246.,288.,330./))>0.0001))print *,101
if (any(abs((/p3/)-(/70.,80.,90.,158.,184.,210.,246.,288.,330./))>0.0001))print *,102

end
call       s1
print *,'pass'
end

