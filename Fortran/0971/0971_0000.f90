module m1
type xx
  real(8),pointer::w(:)
end type
contains
subroutine s1(r,y,ss)
real(8),pointer::    y(:),s(:)
real(8)::   r
type (xx)::rr,ss
allocate(y(2))
aa=y(2)
allocate(s(2))
aa=s(2)
allocate(rr%w(2))
aa=rr%w(2)
allocate(ss%w(2))
aa=ss%w(2)
print '(z16.16)',y(2)
print '(z16.16)',s(2)
print '(z16.16)',rr%w(2)
print '(z16.16)',ss%w(2)
print *,y(2)*r
print *,s(2)*r
print *,rr%w(2)*r
print *,ss%w(2)*r
end subroutine
end
use m1
real(8),pointer::    y(:)
type (xx)::ss
call s1(2.34_8,y,ss)
print *,'pass'
end
