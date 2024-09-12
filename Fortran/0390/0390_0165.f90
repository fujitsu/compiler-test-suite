IMPLICIT NONE
INTEGER :: KK,Arr(10000)
REAL::XX(10000)/10000*1.0/,S
Arr=0
S=0
do concurrent(KK=1:10000,Arr(KK)>=5)
XX(KK) = sqrt(XX(KK))
end do
if (S/=0) print *,201
if (any(XX/=1)) print *,202
print *,'pass'
end


