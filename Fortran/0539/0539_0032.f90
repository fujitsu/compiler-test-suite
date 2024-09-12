ido1=1
ido2=2
!$omp parallel default(none)
do ido1=1,10
!$omp simd
do ido2=1,10
end do
end do
!$omp do
do ido2=1,10
end do
!$omp enddo
!$omp endparallel
if (ido1.ne.1) print *,'1-ng1:',ido1
print *,'pass'
end
