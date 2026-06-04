common /com1/ iii
common /com2/ jjj
integer :: ivar
ivar=1
!$omp parallel default(none) 
!$omp parallel do private(ido,ivar,/com1/)
do ido=1,1
ivar=10
end do
!$omp endparallel do
!$omp end parallel
if (ivar.ne.1) print *,'err'
print *,'pass'
end
