module m1
integer,pointer:: n2,k2
common /cmn/ n1,n2,n3
save::k1,k2
!$omp threadprivate( k1 , /cmn/, k2)
end
subroutine s1
use m1
k1=101+0
n1=201+0
allocate(n2,k2)
n2=202+0
k2=102+0
n3=203+0
!$omp parallel copyin(k1 , n1,n2,n3, k2)
write(1,'(a,z16.16)') 'k1  ',loc(k1)
write(1,'(a,z16.16)') 'k2  ',loc(k2)
write(1,'(a,z16.16)') 'n1 ',loc(n1)
write(1,'(a,z16.16)') 'n2 ',loc(n2)
write(1,'(a,z16.16)') 'n3 ',loc(n3)
if (k1/=101+0) print *,101
if (k2/=102+0) print *,102
if (n1/=201+0) print *,201
if (n2/=202+0) print *,202
if (n3/=203+0) print *,203
call ss
!$omp end parallel
end
call s1
print *,'pass'
end
subroutine ss
use m1
if (k1/=101+0) print *,3101
if (k2/=102+0) print *,3102
if (n1/=201+0) print *,3201
if (n2/=202+0) print *,3202
if (n3/=203+0) print *,3203
end
