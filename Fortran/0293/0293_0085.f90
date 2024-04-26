subroutine s1(n,k)
type x
  integer,pointer::xx(:)
  integer,allocatable::zz(:)
end type
type(x)::yy(3)
allocate(yy(2)%xx(5:5))
yy(n)%xx(k)=1
if (yy(2)%xx(5)/=1)print *,'error-1'
if (yy(2)%xx(k)/=1)print *,'error-2'
allocate(yy(2)%zz(5:5))
yy(n)%zz(k)=1
if (yy(2)%zz(5)/=1)print *,'error-11'
if (yy(2)%zz(k)/=1)print *,'error-12'
end
call s1(2,5)
print *,'pass'
end
