module m1
 type z
   integer:: z1
 end type
 type,extends(z):: y
   integer:: y1
 end type
 type x
   integer:: x1=0
   type(z),allocatable::x2(:)
 end type
integer::flag=0
end
subroutine s1
use m1
 type (x),allocatable:: a01(:),a02(:)
allocate ( x::a01(5))

a02=a01

end
do k=1,1
call s1
end do
print *,'pass'
end
