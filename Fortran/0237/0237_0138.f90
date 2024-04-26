module bank
integer,allocatable:: a(:), a1(:)
integer,pointer    :: p(:), p1(:)
!$OMP THREADPRIVATE(a,p)
end module bank
subroutine s1
use bank
allocate(a(3*4*5),p(3*4*5))
allocate(a1(3*4*5),p1(3*4*5))
a=(/(k,k=1,3*4*5)/)
p=(/(k,k=1,3*4*5)/)
a1=a
p1=p
call sub(a1)
call sub(p1)
end
call       s1
print *,'pass'
end
subroutine sub(d)
integer::d(3*4*5)
if (any(d/=(/(k,k=1,3*4*5)/))) print *,201
end

