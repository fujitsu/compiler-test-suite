subroutine s1
logical(8):: d8=.true.
logical(4):: d4=.true.
logical(2):: d2=.true.
logical(1):: d1=.true.
real(8):: e=1.5
k=0
if (merge(1, 0, d1) < e) k=1
if (merge(1, 0, d2) < e) k=k+2
if (merge(1, 0, d4) < e) k=k+4
if (merge(1, 0, d8) < e) k=K+8

if (e > merge(1, 0, d1)) k=k+16
if (e > merge(1, 0, d2)) k=k+32
if (e > merge(1, 0, d4)) k=k+64
if (e > merge(1, 0, d8)) k=k+128
if (k/=255) print *,k
end
call s1
print *,'pass'
end
