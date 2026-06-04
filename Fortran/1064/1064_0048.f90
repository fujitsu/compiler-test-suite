module m
 type x
   integer:: x1
   real(8):: x2
 end type
 type (x) :: v
end
use m,only: v
v%x1=11
v%x2=11
print *,'pass'
end
