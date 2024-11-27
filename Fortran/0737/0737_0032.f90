type x
 integer,allocatable::p1(:)
end type
type(x)::p
integer a(10,10)
a=1
p=x(a(1,1:10))
if (any(p%p1/=1))write(6,*) "NG"
print *,'pass'
end

