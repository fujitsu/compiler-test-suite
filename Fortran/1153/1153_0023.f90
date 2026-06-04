common /com1/ iii
common /com2/ jjj
integer :: ivar
ivar=1
!$omp parallel default(none) !do private(ivar,/com1/,ido)
!$omp do private(ivar,/com1/,ido)
do ido=1,1
ivar=1
end do
!$omp end do
!$omp task default(none) private(ivar,/com1/,ido)
do ido=1,1
ivar=1
end do
!$omp end task
!$omp do private(ivar,/com1/,ido)
do ido=1,1
ivar=1
end do
!$omp end do
!$omp end parallel 
if (ivar.ne.1) print *,'err'
print *,'pass'
end
