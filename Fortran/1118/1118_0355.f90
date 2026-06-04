complex,allocatable::a1(:),a2(:)
integer::n=2
allocate(a1(n))
allocate(a2(n))
a1=10
a2=10
!$omp task default(firstprivate)
!$omp task default(firstprivate)
a1 = 2
a2 = 2
!$omp end task
if(any(a1/=a2)) print *,'err'
!$omp end task
print *,'pass'
end
