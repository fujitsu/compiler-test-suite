subroutine s11(n1,n2,n,m)
integer n1(n),n2(n)
n2=ishftc(n1,m)
end
subroutine s12(n1,n2,n,m,k)
integer n1(n),n2(n)
n2=ishftc(n1,m,k)
end
subroutine s2(n1,n2,n3,n)
integer n1(n),n2(n),n3(n)
n3=ior(n1,n2)
end
subroutine s3(n1,n2,n,m1,m2)
integer n1(n),n2(n)
n2=ibits(n1,m1,m2)
end






parameter (n=5,m=3)
integer n1(n),n2(n),n3(n)
n1=3
call s11(n1,n2,n,m)
if (any(n2/=24))print *,101
n2=0
k=4
call s12(n1,n2,n,m,k)
if (any(n2/=9))print *,102,n2
call s2(n1,n2,n3,n)
if (any(n3/=11))print *,110,n3
n1=14
call s3(n1,n2,n,1,3)
if (any(n2/=7))print *,112,n2
print *,'pass'
end

