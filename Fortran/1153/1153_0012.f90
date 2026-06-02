common /com1/ iii
common /com2/ jjj
integer :: ivar
ivar=1
!$omp parallel default(none) shared(ivar2,/com2/,ido2)
!$omp task private(ido,ivar,/com1/)
do ido=1,1
ivar=10
end do
!$omp end task
!$omp end parallel
if (ivar.ne.1) print *,'err'
print *,'pass'
end
