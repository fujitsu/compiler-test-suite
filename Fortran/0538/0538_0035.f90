ido1=1
ido2=2
!$omp parallel default(none)
!$omp do
do ido1=1,10
do ido2=1,1
end do
end do
!$omp enddo
!$omp do
do ido2=1,10
do ido1=1,1
end do
end do
!$omp enddo
!$omp endparallel
if (ido1.ne.1)print *,'ido1:',ido1
if (ido2.ne.2)print *,'ido2:',ido2
print *,'pass'
end
