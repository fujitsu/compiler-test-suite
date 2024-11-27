module m1
type a
  integer ::a1
  integer,allocatable::a2(:,:)
end type
type (a),allocatable::x(:,:),y(:,:)
logical(1),dimension(2,3)::mask
logical,parameter::t=.true.,f=.false.
contains
subroutine set_m
end subroutine 
subroutine set_x
if (allocated(x))deallocate(x)
allocate(x(2,3))
m=0
do i2=1,3
do i1=1,2
 if (allocated(x(i1,i2)%a2))write(6,*) "NG"
 allocate(x(i1,i2)%a2(2,3))
 do j2=1,3
 do j1=1,2
   m=m+1
   x(i1,i2)%a2(j1,j2)=m
 end do
 end do
end do
end do
end subroutine
subroutine set_y
if (allocated(y))deallocate(y)
allocate(y(2,3))
m=0
do i2=1,3
do i1=1,2
 if (allocated(y(i1,i2)%a2))write(6,*) "NG"
 allocate(y(i1,i2)%a2(2,3))
 do j2=1,3
 do j1=1,2
   m=m-1
   y(i1,i2)%a2(j1,j2)=m
 end do
 end do
end do
end do
end subroutine
subroutine chk(z,mask)
type(a)::z(:,:)
logical(1)::mask(:,:)
m=0
do i2=1,3
do i1=1,2
 do j2=1,3
 do j1=1,2
   m=m+1
   if (mask(i1,i2))then
     if (z(i1,i2)%a2(j1,j2)/=-m)write(6,*) "NG"
   else
     if (z(i1,i2)%a2(j1,j2)/=+m)write(6,*) "NG"
   endif
 end do
 end do
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
where (mask)
x=y
end where
call chk(x,mask)
print *,'pass'
end
