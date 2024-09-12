subroutine s1(a,b,c,d,k1,k2,k3,k4)
integer,dimension(k1:k2,k3:k4) :: a,b,c,d
a=b+c+d
end
integer,dimension(1:2,3:4) :: a,b,c,d
a=1;b=2;c=3;d=4
call s1( a,b,c,d, 1,2,3,4)
if (any(a/=b+c+d ))print *,101,a
print *,'pass'
end
