module m1
!$omp threadprivate(/cmn/,k4,k5)
common /cmn/k1,k2,k3
dimension k1(2),k2(2)
integer,pointer::k3(:)
integer,pointer::k4(:)
integer,allocatable::k5(:)
end
module m2
common /cmn/k1,k2,k3
integer,pointer::k3(:)
integer,pointer::k4(:)
integer,allocatable::k5(:)
!$omp threadprivate(/cmn/,k4,k5)
dimension k1(2),k2(2)
end
subroutine s1
!$omp threadprivate(/cmn/,k4,k5)
common /cmn/k1,k2,k3
dimension k1(2),k2(2)
integer,pointer::k3(:)
integer,save,pointer::k4(:)
integer,save,allocatable::k5(:)
allocate(k3(2),k4(2),k5(2))
k1=1
k2=2
k3=3
k4=4
k5=5
if (any(k4/=4)) print *,104
if (any(k5/=5)) print *,105
end
subroutine s2
common /cmn/k1,k2,k3
integer,pointer::k3(:)
integer,save,pointer::k4(:)
integer,save,allocatable::k5(:)
!$omp threadprivate(/cmn/,k4,k5)
dimension k1(2),k2(2)
allocate(k4(2),k5(2),k3(2))
k3=3
k4=4
k5=5
if (any(k1/=1)) print *,101
if (any(k2/=2)) print *,102
if (any(k3/=3)) print *,103
if (any(k4/=4)) print *,104
if (any(k5/=5)) print *,105
end
subroutine s11
use m1
k1=1
k2=2
allocate(k4(2),k5(2),k3(2))
k3=3
k4=4
k5=5
if (any(k1/=1)) print *,101
if (any(k2/=2)) print *,102
if (any(k3/=3)) print *,103
if (any(k4/=4)) print *,104
if (any(k5/=5)) print *,105
end
subroutine s12
use m2
k1=1
k2=2
allocate(k4(2),k5(2),k3(2))
k3=3
k4=4
k5=5
if (any(k1/=1)) print *,101
if (any(k2/=2)) print *,102
if (any(k3/=3)) print *,103
if (any(k4/=4)) print *,104
if (any(k5/=5)) print *,105
end
call s1
call s2
call s11
call s12
print *,'pass'
end
