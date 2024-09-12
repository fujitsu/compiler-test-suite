subroutine s1
type x
  integer,allocatable::x1
end type
type(x),allocatable::n(:)
type(x)::m
m=x(1)
allocate(n(2))
n=m    
call sub(n(2)%x1)
end
subroutine s2
type x
  integer::x1
end type
type(x),allocatable::n(:)
type(x)::m=x(1)
allocate(n(2))
n=m    
call sub(n(2)%x1)
end
call s1
call s2
print *,'pass'
end
subroutine sub(n)
if (n/=1) print *,1010
end
