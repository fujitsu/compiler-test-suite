module m1
character(3),save:: a1
character(3),save:: a2(2)
character(3),save,pointer:: a3
character(3),save,pointer:: a4(:)
character(3),save,allocatable:: a5
character(3),save,allocatable:: a6(:)
character(3):: b1
character(3):: b2(2)
character(3),pointer:: b3
character(3),pointer:: b4(:)
common /cmn/b1,b2,b3,b4
!$omp threadprivate(a1)
!$omp threadprivate(a2)
!$omp threadprivate(a3)
!$omp threadprivate(a4)
!$omp threadprivate(a5)
!$omp threadprivate(a6)
!$omp threadprivate(/cmn/)
end
subroutine s1
use m1,only:a1,a2,a3,a4,a5,a6
!$omp threadprivate(/cmn/)
character(3):: b1
character(3):: b2(2)
character(3),pointer:: b3
character(3),pointer:: b4(:)
common /cmn/b1,b2,b3,b4
!$omp parallel private(k)
allocate(a3,a4(2),a5,a6(2),b3,b4(2),stat=k)
if (k/=0)print *,10001
!$omp end parallel
a1 = "abc"
a2 = "abc"
a3 = "abc"
a4 = "abc"
a5 = "abc"
a6 = "abc"
b1 = "abc"
b2 = "abc"
b3 = "abc"
b4 = "abc"
!$omp parallel copyin(a1,a2,a3,a4,a5,a6,b1,b2,b3,b4)
if (   (a1/='abc'))print *,101
if (any(a2/='abc'))print *,102
if (   (a3/='abc'))print *,103
if (any(a4/='abc'))print *,104
if (   (a5/='abc'))print *,105
if (any(a6/='abc'))print *,106
if (   (b1/='abc'))print *,121
if (any(b2/='abc'))print *,122
if (   (b3/='abc'))print *,123
if (any(b4/='abc'))print *,124
!$omp end parallel
end
call s1
print *,'pass'
end
