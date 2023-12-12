module m1
contains
subroutine s2(k)
entry e2(k)
do kk=1,k
nn=0
!$omp parallel private(nn)
nn=kk
block
block
 integer a(nn)
 a=1
 if (any(a/=1)) print *,102
 if (size(a)/=kk) print *,142,kk,size(a)
end block
end block
!$omp end parallel
end do
end subroutine
end
subroutine s0
use m1
call s2(3)
call e2(3)
end
call omp_set_num_threads(1)
call s0
print *,'pass'
end
