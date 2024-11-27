integer, allocatable, dimension (:) :: a,b
allocate (a(2),b(2))
!$omp parallel firstprivate (a)
a(1) = 1;b(1)=1
a(2) = 2;b(2)=2
if(any(a/=(/1,2/))) print *,'err1'
!$omp end parallel
if(any(b/=(/1,2/))) print *,'err2'
print *,'pass'
end
