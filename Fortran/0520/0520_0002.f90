subroutine s1
type x
  integer::x1
end type
type(x),allocatable::n(:)
type(x)::nn
k=1
nn=x(k)
allocate(n(2))
n=nn
call sub(n(2)%x1)
end
print *,'pass'
end
subroutine sub(n)
if (n/=1) print *,1010
end
