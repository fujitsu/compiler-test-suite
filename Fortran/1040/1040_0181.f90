module m
 type a
  integer ::a1=1
  integer :: a2
  integer :: a3=3
 end type
 type b
  integer ::b1=4
  integer :: b2
  integer :: b3=6
 end type
 type x
   type(a):: x1
   integer   x2
   type(b)::x3
 end type
end
subroutine s(i)
  use m
  type(x)::z(i)
  if (any(z%x1%a1/=1))write(6,*) "NG"
  if (any(z%x1%a3/=3))write(6,*) "NG"
  if (any(z%x3%b1/=4))write(6,*) "NG"
  if (any(z%x3%b3/=6))write(6,*) "NG"
end
call s(2)
print *,'pass'
end
