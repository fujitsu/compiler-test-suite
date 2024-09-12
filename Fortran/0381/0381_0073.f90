subroutine s1
type z
  integer::z1(10000)
end type
 type x
   type(z),allocatable::x1
 end type
 type(z),allocatable::y1
 type (x):: xx

 allocate(y1)
 allocate(xx%x1)
y1%z1=1
xx%x1%z1=2

xx=x(y1)
if (any(xx%x1%z1/=1))print *,101
if (any(y1%z1/=1))print *,102
end
call s1
print *,'pass'
end
