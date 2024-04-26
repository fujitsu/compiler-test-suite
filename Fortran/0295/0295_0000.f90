subroutine s1(n)
if (n==2)goto 1
if (k1==1.or.k2==1.or.k3==1)goto 1
k=2
1 continue
end
call s1(2)
print *,'pass'
end
