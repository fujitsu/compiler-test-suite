subroutine s1(aa,bb,a,n)
integer ::a(n*n),aa(n,n),bb(n,n)
a=(/aa+bb/)+(/aa+bb/)
end
parameter (n=2)
integer ::a(n*n),aa(n,n),bb(n,n)
aa=1
bb=2
call s1(aa,bb,a,n)
if (any(a/=6))print *,101,a
print *,'pass'
end
