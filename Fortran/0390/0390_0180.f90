subroutine s1
common /cmn/ k1,k2
integer,save::k3
!$omp threadprivate(/cmn/,k3)

k1=1
k2=2
k3=3
if (k1/=1) print *,101
if (k2/=2) print *,102
if (k3/=3) print *,103
end

call s1
print *,'pass'
end

