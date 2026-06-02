subroutine s1
integer,allocatable:: a1(:),a2(:)

k=1
allocate(a1(2),a2(2),source=[1,2])
!$omp parallel reduction( +: k) reduction( +: a1) reduction(+: a2)
 k=k+1000
 a1=a1+1000
 a2=a2+1000
!$omp end parallel

if (k/=2001) print *,1001
if (any(a1/=[2001,2002])) print *,1002
if (any(a2/=[2001,2002])) print *,1003
end
call omp_set_num_threads(2)
call s1
print *,'pass'
end
