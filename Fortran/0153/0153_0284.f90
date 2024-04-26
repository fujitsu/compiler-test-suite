module m1
type:: x1
sequence
integer:: a1
integer:: a2(2)
integer,pointer:: a3
integer,pointer:: a4(:)
integer,allocatable:: a5
integer,allocatable:: a6(:)
end type
type x2
sequence
integer:: b1
integer:: b2(2)
integer,pointer:: b3
integer,pointer:: b4(:)
end type
type (x1),save::v1
type (x2)::v2,v3
common /cmn/v2,v3
!$omp threadprivate(v1)
!$omp threadprivate(/cmn/)
end
subroutine s1
use m1,only:x2,v1
!$omp threadprivate(/cmn/)
type (x2)::v2,v3
common /cmn/v2,v3
!$omp parallel private(k)
allocate(v1%a3,v1%a4(2),v1%a5,v1%a6(2),v2%b3,v2%b4(2),v3%b3,v3%b4(2),stat=k)
if (k/=0)print *,10001
!$omp end parallel
v1%a1 = 123
v1%a2 = 123
v1%a3 = 123
v1%a4 = 123
v1%a5 = 123
v1%a6 = 123
v2%b1 = 123
v2%b2 = 123
v2%b3 = 123
v2%b4 = 123
v3%b1 = 123
v3%b2 = 123
v3%b3 = 123
v3%b4 = 123
!$omp parallel copyin(v1,v2,v3)
if (   (v1%a1/=123))print *,101
if (any(v1%a2/=123))print *,102
if (   (v1%a3/=123))print *,103
if (any(v1%a4/=123))print *,104
if (   (v1%a5/=123))print *,105
if (any(v1%a6/=123))print *,106
if (   (v2%b1/=123))print *,121
if (any(v2%b2/=123))print *,122
if (   (v2%b3/=123))print *,123
if (any(v3%b4/=123))print *,124
if (   (v3%b1/=123))print *,121
if (any(v3%b2/=123))print *,122
if (   (v3%b3/=123))print *,123
if (any(v3%b4/=123))print *,124
!$omp end parallel
end
call s1
print *,'pass'
end
