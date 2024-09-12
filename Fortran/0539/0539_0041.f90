ido1=1
ido2=2
ido3=3
ido4=4
!$omp parallel default(none)
!$omp do
do ido1=1,10
do ido2=1,10
do ido3=1,10
end do
end do
end do
!$omp enddo

!$omp simd
do ido1=1,10
do ido2=1,10
do ido3=1,10
end do
end do
end do
!$omp endsimd
!$omp endparallel
if (ido2.ne.2) print *,'1-ng2:',ido2
if (ido3.ne.3) print *,'1-ng3:',ido3
if (ido4.ne.4) print *,'1-ng4:',ido4
print *,'pass'
end
