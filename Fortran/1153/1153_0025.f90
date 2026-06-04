integer :: ivar
ivar=1
!$omp parallel default(none) 
!$omp parallel num_threads(ivar)
!!!!!!!   ivar = 1
!$omp end parallel
!$omp end parallel 
if (ivar.ne.1) print *,'err'
print *,'pass'
end
