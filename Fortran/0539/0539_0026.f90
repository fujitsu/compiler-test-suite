ido1=1
ido2=2
ido3=3
ido4=4
!$omp parallel default(none)
!$omp do collapse(2)
do ido1=1,10
do ido4=1,10
!$omp simd collapse(2)
do ido2=1,10
do ido3=1,10
end do
end do
!$omp endsimd
end do
end do
!$omp enddo
!$omp do
do ido2=1,10
do ido1=1,10
end do
end do
!$omp enddo
!$omp do
do ido3=1,10
end do
!$omp enddo
do ido2=1,1
end do
do ido3=1,1
end do

!$omp endparallel
if (ido1.ne.1) print *,'1-ng1:',ido1
if (ido2.ne.2) print *,'1-ng2:',ido2
if (ido3.ne.3) print *,'1-ng3:',ido3
if (ido4.ne.4) print *,'1-ng4:',ido4
print *,'pass'
end