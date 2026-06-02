module m1
integer,save:: a1
integer,save:: a2(2)
integer,save,pointer:: a3
integer,save,pointer:: a4(:)
integer,save,allocatable:: a5
integer,save,allocatable:: a6(:)
integer:: b1
integer:: b2(2)
integer,pointer:: b3
integer,pointer:: b4(:)
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
integer:: b1
integer:: b2(2)
integer,pointer:: b3
!$omp threadprivate(/cmn/)
integer,pointer:: b4(:)
common /cmn/b1,b2,b3,b4
!$omp parallel private(k)
allocate(a3,a4(2),a5,a6(2),b3,b4(2),stat=k)
if (k/=0)print *,10001
!$omp end parallel
a1 = 123
a2 = 123
a3 = 123
a4 = 123
a5 = 123
a6 = 123
b1 = 123
b2 = 123
b3 = 123
b4 = 123
!$omp parallel copyin(a1,a2,a3,a4,a5,a6, b1,b2,b3,b4)
if (   (a1/=123))print *,101
if (any(a2/=123))print *,102
if (   (a3/=123))print *,103
if (any(a4/=123))print *,104
if (   (a5/=123))print *,105
if (any(a6/=123))print *,106
if (   (b1/=123))print *,121
if (any(b2/=123))print *,122
if (   (b3/=123))print *,123
if (any(b4/=123))print *,124
!$omp end parallel
end
call s1
print *,'pass'
end
