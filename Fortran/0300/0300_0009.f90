integer,allocatable,dimension(:)::a1,a2
allocate(a1(5:8))
a1=3
allocate(a2(9:13))
a2=4
do i=1,3
!$omp parallel private(a1)
!$omp parallel private(a2)
!$OMP SINGLE
allocate(a1(1:2))
a1=1
allocate(a2(2:4))
a2=2
if (any((/a1,lbound(a1),ubound(a1),shape(a1)/)/=(/1,1,1,2,2/)))print *,'error-1'
if (any((/a2,lbound(a2),ubound(a2),shape(a2)/)/=(/2,2,2,2,4,3/)))print *,'error-2'
!$OMP END SINGLE
!$omp endparallel
!$omp endparallel
end do
if (any((/a1,lbound(a1),ubound(a1),shape(a1)/)/=(/3,3,3,3,5,8,4/)))print *,'error-3'
if (any((/a2,lbound(a2),ubound(a2),shape(a2)/)/=(/4,4,4,4,4,9,13,5/)))print *,'error-4'
print *,'pass'
end
