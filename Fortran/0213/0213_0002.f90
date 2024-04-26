n=0
k=-1
!$1 k=1
1continue
if (n/=0) goto 1
if (k/=-1) print *,101
!$2k=2
2continue
if (n/=0) goto 2
if (k/=-1) print *,102
!$ 3 k=3
if (n/=0) goto 3
if (k/=3) print *,103
!$ 4k=4
if (n/=0) goto 4
if (k/=4) print *,104
print *,'pass'
end
