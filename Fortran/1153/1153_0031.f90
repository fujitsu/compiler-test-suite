!$omp parallel default(none) 
 do ip=1,1
!$omp sections private(ivar)
 do ii=1,1
   ivar=1
 enddo
!$omp end sections
 enddo
!$omp end parallel
!if (ivar.ne.1) print *,'err'
print *,'pass'
end
