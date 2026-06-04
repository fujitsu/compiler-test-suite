common /com1/ iii
common /com2/ jjj
integer :: ivar
ivar=1
!$omp task default(none) private(ido)
!$omp parallel do private(ivar,/com1/,ido)
do ido=1,1
ivar=1
end do
!$omp end parallel do
!$omp end task
if (ivar.ne.1) print *,'err'
print *,'pass'
end
