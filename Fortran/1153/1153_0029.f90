ivar=1
!$omp task     default(none)  private(ivar)
!$omp parallel do  private(ivar)
 do ii=1,1
   ivar=10
 enddo
!$omp end parallel do
!$omp end task !parallel
if (ivar.ne.1) print *,'err'
print *,'pass'
end
