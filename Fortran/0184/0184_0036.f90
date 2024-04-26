subroutine s1
save
is01(k1)=k1
if (is01(1)/=1) print *,101
n=0
call ss1(n)
contains
recursive subroutine ss1(n) 
k1=n
n=n+1
if (n<3) call ss1(n)
n=n-1
if (k1/=n) print *,201,k1,n
end subroutine
end
call s1
print *,'pass'
end
