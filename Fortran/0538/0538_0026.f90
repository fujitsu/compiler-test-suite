ido1=1
ido2=2
!$omp parallel
!$omp do
do ido1=1,10
do ido2=1,10
end do
end do
!$omp enddo
do ido2=1,10
do ido1=1,10
end do
end do
!$omp endparallel
if (ido1.ne.1)print *,'ido1:',ido1
if (ido2.ne.2)print *,'ido2:',ido2
print *,'pass'
end
