ido1=1
ido2=2
!$omp parallel default(none) private(ido1,ido2)
!$omp paralleldo shared(ido1,ido2)
do ido1=1,10
do ido2=1,10
end do
end do
!$omp endparalleldo
!$omp paralleldo shared(ido1,ido2)
do ido2=1,10
do ido1=1,10
end do
end do
!$omp endparalleldo
!$omp end parallel 
if (ido1.ne.1 .or. ido2.ne.2) print *,ido1,ido2
print *,'pass'
end
