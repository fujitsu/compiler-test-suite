subroutine s2
type x
  integer::x1
end type
type(x),allocatable::n(:)
k=1
allocate(n(2))
n=x(k)
call sub(n(2)%x1)
end
subroutine s1
integer,allocatable::n(:)
allocate(n(2))
n=1
call sub(n(2))
end
call s1
call s2
print *,'pass'
end
subroutine sub(n)
if (n/=1) print *,1010
end
