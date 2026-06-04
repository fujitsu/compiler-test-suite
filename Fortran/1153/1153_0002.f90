!$omp parallel default(none)
!$omp do private(ido,ivar)
do ido=1,1
end do
!$omp end parallel
print *,'pass'
end
