subroutine s1
integer,allocatable:: a1(:)
integer:: b1(2)

k=2
allocate(a1(2),source=[2,3])
!$omp parallel reduction( +: k) reduction( *: a1) 
 k=k+4
 a1=a1+4
!$omp end parallel

if (k/=10) print *,1001
if (any(a1/=[50,75])) print *,1002,a1

k=2
b1=[2,3]
!$omp parallel reduction( +: k) reduction( *: b1) 
 k=k+4
 b1=b1+4
!$omp end parallel

if (k/=10) print *,2001
if (any(b1/=[50,75])) print *,2002,b1
end
call omp_set_num_threads(2)
call s1
print *,'pass'
end
