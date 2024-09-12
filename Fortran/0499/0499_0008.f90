!$omp parallel do default(shared)
do i1=1,1
do i2=1,1
end do
end do
!$omp endparallel do
print *,'pass'
end
