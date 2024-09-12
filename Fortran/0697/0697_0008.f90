subroutine foo(k)
integer(8)::k
integer(8),parameter::n=2
type x
  integer(1) x1(n,n,n,n,n)
end type
type(x)::v
integer(8),parameter::i=sizeof(v)
if (i/=n*n*n*n*n)print *,i,n
if (i/=k*k*k*k*k)print *,i,k
end

integer(8),parameter::k=2
call foo(k)
print *,'pass'
end
