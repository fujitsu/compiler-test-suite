subroutine s1(n,k)
type x
  integer::xx(5)
end type
integer,pointer::p(:)
type (x)::yy(3)
allocate(p(2))
p(2)=1
yy(n)%xx(k)=1
end
call s1(2,2)
print *,'pass'
end
