module m1
integer::k11,k12
!$omp threadprivate(k12)
end
block data
common /cmn/ k1,k2
!$omp threadprivate(/cmn/)
data k2/1/
end
integer,save::k4,k5(2)
integer       k6,k7(2)
!$omp threadprivate(/cmn/)
common /cmn/ k1,k2
if (k2/=1) print *,101
data k3/3/
if (k3/=3) print *,101
k4=4
if (k4/=4) print *,101
k5=4
if (k5(2)/=4) print *,101
k6=4
k7=4
if (k6/=4) print *,101
if (k7(2)/=4) print *,101
call s1
print *,'pass'
end
subroutine s1
use m1
common /cmn/ k13,k14
!$omp threadprivate(/cmn/)
namelist /nam/ k11,k12,k13,k14
k11=1
k12=2
k13=3
k14=4
write(20,nam)
call chk
end
subroutine chk
namelist /nam/ k11,k12,k13,k14
rewind 20
read(20,nam)
if (k11/=1) print *,201
if (k12/=2) print *,202
if (k13/=3) print *,203
if (k14/=4) print *,204
end
