common /com1/ iii
integer :: ivar
ivar=1
!$omp parallel default(none) private(ivar,/com1/)
!$omp do private(ivar,/com1/)
do ido=1,1
ivar=10
end do
ivar=1
!$omp end parallel
if (ivar.ne.1) print *,'err'
print *,'pass'
end
