call ss1
call ss2
print *,'pass'
end
subroutine ss1
real ,dimension(10,10) :: var
real ,dimension(10,10) :: array
pointer (ptr,var)
ptr = loc(array)
!$omp parallel  firstprivate(ptr)
var = 1.0
!$omp end parallel
if(sum(array)/=100) print *,'err1'
end
subroutine ss2
integer :: ddd
integer :: iii
pointer (ppp,ddd)
ppp = loc(iii)
!$omp do  firstprivate(ppp) lastprivate(ppp)
do i=1,1
ddd = 1
end do
!$omp end do
if(iii/=1) print *,'err2'
end
