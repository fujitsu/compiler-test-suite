ido1=1
ido2=2
!$omp parallel default(none)
!$omp do
do ido1=1,10
!$omp simd collapse(2)
do ido2=1,10
 do ido3=1,10
 end do
end do
!$omp endsimd
!$omp simd collapse(2)
do ido4=1,10
 do ido5=1,10
  do ido3=1,10
  end do
 end do
end do
!$omp endsimd
end do
!$omp enddo
!$omp do
do ido2=1,10
end do
!$omp enddo
!$omp simd collapse(2)
do ido4=1,10
 do ido5=1,10
 end do
end do
!$omp endsimd
!$omp endparallel
if (ido1.ne.1) print *,'1-ng1:',ido1
if (ido2.ne.11) print *,'1-ng2:',ido2
print *,'pass'
end
