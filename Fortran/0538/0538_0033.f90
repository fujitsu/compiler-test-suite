ido1=1
!$omp parallel
do ido1=1,10
end do
!$omp do
do ido1=1,10
end do
!$omp enddo
!$omp endparallel
if (ido1.ne.1)print *,'ido1:',ido1
print *,'pass'
end
