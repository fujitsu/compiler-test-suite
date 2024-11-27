module m1
type a
  integer ::a1
  integer,allocatable::a2(:)
end type
type (a),allocatable::x(:),y(:)
logical(8),dimension(:),allocatable::mask
logical,parameter::t=.true.,f=.false.
contains
subroutine set_m
allocate(mask(3))
end subroutine 
subroutine set_x
if (allocated(x))deallocate(x)
allocate(x(3))
m=0
do i2=1,3
 if (allocated(x(i2)%a2))write(6,*) "NG"
 allocate(x(i2)%a2(3))
 do j2=1,3
   m=m+1
   x(i2)%a2(j2)=m
 end do
end do
end subroutine
subroutine set_y
if (allocated(y))deallocate(y)
allocate(y(3))
m=0
do i2=1,3
 if (allocated(y(i2)%a2))write(6,*) "NG"
 allocate(y(i2)%a2(3))
 do j2=1,3
   m=m-1
   y(i2)%a2(j2)=m
 end do
end do
end subroutine
subroutine chk(z,mask)
type(a)::z(:)
logical(8)::mask(:)
m=0
do i2=1,3
 do j2=1,3
   m=m+1
   if (mask(i2))then
     if (z(i2)%a2(j2)/=-m)write(6,*) "NG"
   else
     if (z(i2)%a2(j2)/=+m)write(6,*) "NG"
   endif
 end do
end do
end subroutine
end
use m1
call set_m
call set_x
call set_y
mask=t
where (mask)
x=y
end where
call chk(x,mask)
call set_x
call chk(x,.not.mask)
call set_y
mask=f
call chk(x,mask)
print *,'pass'
end
