subroutine s1
common /cmn/ k1,k2,k3
k1=1
k2=2
k3=3
!$omp parallel private(k1,k2)
k1=11
k2=12
if (k1/=11) print *,121
if (k2/=12) print *,122
if (k3/= 3) print *,123
k3=13
!$omp parallel private(/cmn/)
k1=21
k2=22
k3=23
if (k1/=21) print *,101
if (k2/=22) print *,102
if (k3/=23) print *,103
!$omp end parallel
if (k1/=11) print *,111
if (k2/=12) print *,112
if (k3/=13) print *,113
!$omp end parallel
if (k1/=1) print *,131
if (k2/=2) print *,132
if (k3/=13) print *,133
end
call    omp_set_num_threads(1)
call s1
print *,'pass'
end
