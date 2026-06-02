common /com1/ iii
common /com2/ jjj
integer :: ivar
ivar=1
!$omp parallel default(none) shared(ivar,ido)
!$omp master !private(ivar,/com1/)
do ido=1,1
ivar=1
end do
!$omp end master
!$omp end parallel
if (ivar.ne.1) print *,'err'
print *,'pass'
end
