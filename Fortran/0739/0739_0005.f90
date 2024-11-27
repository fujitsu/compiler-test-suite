type x
 integer,allocatable::p1(:)
end type
type(x)::p(10)
integer,allocatable::pp(:)
allocate(pp(10))
pp=1
 p=x(pp)
if(any(p(1)%p1/=1))write(6,*) "NG"
print *,'pass'
end

