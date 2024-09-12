subroutine s1
INTEGER :: KK,XX
KK = 10
XX = 1
do concurrent(KK=1:5)
XX = XX + 1
end do
if (KK/=10) print *,10001
if (XX/=6) print *,10002
end

subroutine s2
INTEGER :: KK,XX,Arr(5)
KK = 10
XX = 1
Arr = (/3,4,5,6,7/)
do concurrent(KK=1:5,Arr(KK) >=5)
XX = XX + 1
end do
if (KK/=10) print *,20001
if (XX/=4) print *,20002
end

call s1
call s2
print *,'pass'
end
