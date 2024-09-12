call s1
call s2
print *,'pass'
end
subroutine s1
real ,dimension(10) :: var
real ,dimension(10) :: array
pointer (ptr,var)
ptr = loc(array)
!$omp parallel  firstprivate(ptr)
var = 1.0
!$omp end parallel
if(any(array/=[(1.0,i=1,10)])) call err(1)
!$omp sections firstprivate(ptr) lastprivate(ptr)
var = 2
!$omp end sections
if(any(array/=[(2.0,i=1,10)])) call err(1)
end
subroutine err(i)
integer::i
print *,'err',i
end
subroutine s2
real ,dimension(10) :: var
real ,dimension(10) :: array
pointer (ptr,var)
!$omp do lastprivate(ptr)
do j=1,10
ptr = loc(array)
var(j) = 1.0
end do
!$omp end do
if(any(array/=[(1.0,i=1,10)])) call err(3)
end
