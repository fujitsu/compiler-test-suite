module m1
 type z
   integer:: z1
 end type
 type x
   integer:: x1
   class(z),allocatable::x2(:)
 end type
contains
subroutine s1
 type (x),allocatable:: a01(:),b01(:)
allocate ( x::b01(5))
a01=b01
end
subroutine s2
 type (x):: a01(2),b01(2)
a01=b01
end
subroutine s3
 type (x),allocatable:: a01
 type (x):: b01
a01=b01
end
subroutine s4
 type (x):: a01
 type (x):: b01
a01=b01
end
end

print *,'pass'
end
