integer :: ivar
ivar=1
!$omp parallel default(none) 
!$omp parallel private(ivar)
 do ii=1,1
   ivar=1
 enddo
!$omp end parallel
!$omp end parallel 
if (ivar.ne.1) print *,'err'
print *,'pass'
end
