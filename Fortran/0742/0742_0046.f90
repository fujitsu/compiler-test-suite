module m1
type a
  integer ::a1
  complex,allocatable::a2(:)
end type
type (a),allocatable::x(:),y(:)
logical(8),dimension(:),allocatable::mask
logical,parameter::t=.true.,f=.false.
integer::k1=1,k2=2,k3=3
contains
subroutine set_m
allocate(mask(6))
end subroutine 
subroutine set_x
if (allocated(x))deallocate(x)
allocate(x(6))
m=0
do i=1,6
 if (allocated(x(i)%a2))write(6,*) "NG"
 allocate(x(i)%a2(6))
 do j=1,6
   m=m+1
   x(i)%a2(j)=cmplx(m,m)
 end do
end do
end subroutine
subroutine set_y
if (allocated(y))deallocate(y)
allocate(y(6))
m=0
do i=1,6
 if (allocated(y(i)%a2))write(6,*) "NG"
 allocate(y(i)%a2(6))
 do j=1,6
   m=m-1
   y(i)%a2(j)=cmplx(m,-m*2)
 end do
end do
end subroutine
subroutine chk(z,mask)
type(a)::z(:)
logical(8)::mask(:)
m=0
do i=1,6
 do j=1,6
   m=m+1
   if (mask(i))then
     if (abs(z(i)%a2(j)-cmplx(-m,m*2))>0.0001)write(6,*) "NG"
   else
     if (abs(z(i)%a2(j)-cmplx(m,+m))>0.0001)write(6,*) "NG"
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
where (mask(1:5))
x(2:6)=x(1:5)
x(1:5)=x(2:6)
end where
where (mask(1:1))
x(6:6)=y(6:6)
end where
call chk(x,mask)
call set_x
where (mask)
x=y
end where
where (mask(k1:k2+k3))
x(k2:k2*k3)=x(k1:k2+k3)
x(k1:k2+k3)=x(k2:k2*k3)
end where
where (mask(k1:k3-k2))
x(k2*k3:k2*k3)=y(k2*k3:k2*k3)
end where
call chk(x,mask)
print *,'pass'
end
