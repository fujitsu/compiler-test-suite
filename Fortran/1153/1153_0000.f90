common /com1/ iii
common /com2/ jjj
integer :: ivar
ivar=1
!$omp parallel default(none) shared(ivar2,/com2/,ido2)
!$omp do private(ivar,/com1/)
do ido=1,1
ivar=10
end do
!$omp do lastprivate(ivar2,/com2/,ido2)
do ido2=1,1
ivar2=10
end do
!$omp end parallel
if (ivar.ne.1) print *,'err'
print *,'pass'
end
