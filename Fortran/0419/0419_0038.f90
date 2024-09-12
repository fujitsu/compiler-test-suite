integer,allocatable::a(:)
integer,allocatable::b
a=[1]
!$omp parallel private(a)
!$omp parallel private(a)
a=[4]

!$omp endparallel
a=10
a=20
if(a(1)/=20) print *,'err1'
!$omp endparallel
!$omp single
b=100
!$omp end single
if(a(1)/=1) print *,'err2'
if(b/=100) print *,'err3'
print *,'pass'
end
