module bank
integer,allocatable:: a(:,:,:)
integer,pointer    :: p(:,:,:)
!$OMP THREADPRIVATE(a,p)
end module bank
subroutine s1(n1,n2,n3,n4,n5)
use bank
allocate(a(3,4,5),p(3,4,5))
a=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))
if (any(ubound(a)/=(/3,4,5/)))print *,101
p=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))
if (any(ubound(p)/=(/3,4,5/)))print *,102
call sub(a)
call sub(p)
if (ifun(a)/=1) print *,103
if (ifun(p)/=1) print *,104
end
call       s1(1,2,3,4,5)
print *,'pass'
end
subroutine sub(d)
integer::d(3*4*5)
if (any(d/=(/(k,k=1,3*4*5)/))) print *,201
end
function   ifun(d)
integer::d(3*4*5)
if (any(d/=(/(k,k=1,3*4*5)/))) print *,202
ifun=1
end

