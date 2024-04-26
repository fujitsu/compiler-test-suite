module m1
type:: x1
sequence
character(3):: a1
character(3):: a2(2)
character(3),pointer:: a3
character(3),pointer:: a4(:)
character(3),allocatable:: a5
character(3),allocatable:: a6(:)
end type
type x2
sequence
character(3):: b1
character(3):: b2(2)
character(3),pointer:: b3
character(3),pointer:: b4(:)
end type
type (x1),save::v1
type (x2)::v2,v3
common /cmn/v2,v3
!$omp threadprivate(v1)
!$omp threadprivate(/cmn/)
end
subroutine s1
use m1,only:v1,x2
!$omp threadprivate(/cmn/)
common /cmn/v2,v3
type (x2)::v2,v3
!$omp parallel private(k)
allocate(v1%a3,v1%a4(2),v1%a5,v1%a6(2),v2%b3,v2%b4(2),v3%b3,v3%b4(2),stat=k)
if (k/=0)print *,10001
!$omp end parallel
v1%a1 = "abc"
v1%a2 = "abc"
v1%a3 = "abc"
v1%a4 = "abc"
v1%a5 = "abc"
v1%a6 = "abc"
v2%b1 = "abc"
v2%b2 = "abc"
v2%b3 = "abc"
v2%b4 = "abc"
v3%b1 = "abc"
v3%b2 = "abc"
v3%b3 = "abc"
v3%b4 = "abc"
!$omp parallel copyin(v1,v2,v3)
if (   (v1%a1/='abc'))print *,101
if (any(v1%a2/='abc'))print *,102
if (   (v1%a3/='abc'))print *,103
if (any(v1%a4/='abc'))print *,104
if (   (v1%a5/='abc'))print *,105
if (any(v1%a6/='abc'))print *,106
if (   (v2%b1/='abc'))print *,121
if (any(v2%b2/='abc'))print *,122
if (   (v2%b3/='abc'))print *,123
if (any(v3%b4/='abc'))print *,124
if (   (v3%b1/='abc'))print *,121
if (any(v3%b2/='abc'))print *,122
if (   (v3%b3/='abc'))print *,123
if (any(v3%b4/='abc'))print *,124
!$omp end parallel
end
call s1
print *,'pass'
end
