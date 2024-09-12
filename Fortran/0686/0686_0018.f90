module m
integer i,j
end module
use m
!$omp parallel do lastprivate(i,j)
do i=1,100
do j=1,100
  continue
enddo
enddo
if (j/=101) print *,'error j->',j
print *,'pass'
end
