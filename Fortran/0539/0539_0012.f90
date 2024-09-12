ido1=1
ido2=2
!$omp parallel default(none)
!$omp critical
do ido1=1,10
!$omp simd
do ido2=1,10
end do
!$omp endsimd
end do
!$omp endcritical
!$omp do
do ido2=1,10
end do
!$omp enddo
!$omp endparallel
if (ido1.ne.1) print *,'1-ng1:',ido1
if (ido2.eq.2) print *,'1-ng2:',ido2
print *,'pass'
end
