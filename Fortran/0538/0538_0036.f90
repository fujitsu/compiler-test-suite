ido1=1
ido2=2
!$omp parallel
!$omp parallel default(none)
!$omp do 
do ido1=1,10
do ido2=1,10
end do
end do
!$omp enddo
!$omp do 
do ido2=1,10
do ido1=1,10
end do
end do
!$omp enddo
!$omp endparallel
!$omp endparallel 
if (ido1.ne.1) print *,'ng1:',ido1
if (ido2.ne.2) print *,'ng2:',ido2
print *,'pass'
end
