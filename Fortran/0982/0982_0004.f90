integer,dimension(:),allocatable::a1,a2
integer::n=2
allocate(a1(n))
allocate(a2(n))
a1=10
a2=10
!$omp parallel reduction(*:a1) reduction(*:a2)
a1 = a1 * 2
a2 = a2 * 2
!$omp end parallel
if(any(a1/=a2)) print *,'err'
print *,'pass'
end
