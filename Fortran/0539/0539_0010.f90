ido1=1
ido2=2
!$omp parallel default(none) private(ido2)
!$omp do  private(ido1)
do ido1=1,10
!$omp simd private(ido2)
do ido2=1,10
end do
!$omp endsimd
end do
!$omp enddo
!$omp do private(ido2)
do ido2=1,10
end do
!$omp enddo
do ido2=1,10
end do
!$omp endparallel
if (ido1.ne.1) print *,'1-ng1:',ido1
if (ido2.ne.2) print *,'1-ng2:',ido2
print *,'pass'
end
