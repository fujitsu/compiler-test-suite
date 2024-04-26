subroutine s1(n,k)
type x
  integer::xx(5)
end type
type(x)::yy(3)
yy(n)%xx(k)=1
if (yy(2)%xx(5)/=1)print *,'error-1'
if (yy(2)%xx(k)/=1)print *,'error-2'
end
call s1(2,5)
print *,'pass'
end
