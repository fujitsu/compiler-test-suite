integer, allocatable,dimension(:) :: iii
integer, allocatable :: jjj
!$omp threadprivate(iii,jjj)
!$omp single
iii=[10]
jjj=100
!$omp end single copyprivate(ptr)
if(iii(1)/=10) print *,'err'
if(jjj/=100) print *,'err1'
print *,'pass'
end
