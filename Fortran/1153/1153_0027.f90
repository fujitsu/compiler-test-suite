integer :: ivar
ivar=1
!$omp parallel default(none) 
!$omp do private(ivar)
 do ii=1,1
   ivar=1
 enddo
!$omp end do
!$omp end parallel 
if (ivar.ne.1) print *,'err'
print *,'pass'
end
