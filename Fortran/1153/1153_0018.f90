common /com1/ iii
common /com2/ jjj
integer :: ivar
ivar=1
!$omp ORDEReD !private(ivar,/com1/)
!$omp parallel default(none) shared(ivar,ido)
do ido=1,1
ivar=1
end do
!$omp end parallel
!$omp end ordered
if (ivar.ne.1) print *,'err'
print *,'pass'
end
