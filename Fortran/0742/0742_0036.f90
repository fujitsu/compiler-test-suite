module m1
type s
  integer ::a1
  character,allocatable::a2(:,:)
end type
type a
  integer ::a1
  type(s),allocatable::a2(:,:)
end type
type (a),allocatable::x(:,:),y(:,:)
logical,dimension(:,:),allocatable::mask
logical,parameter::t=.true.,f=.false.
contains
subroutine set_m
allocate(mask(2,3))
end subroutine 
subroutine set_x
allocate(x(2,3))
m=0
do i2=1,3
do i1=1,2
 if (allocated(x(i1,i2)%a2))write(6,*) "NG"
 allocate(x(i1,i2)%a2(2,3))
 do j2=1,3
 do j1=1,2
   m=m+1
   allocate(x(i1,i2)%a2(j1,j2)%a2(2,3))
   x(i1,i2)%a2(j1,j2)%a2=char(m)
 end do
 end do
end do
end do
end subroutine
subroutine set_y
allocate(y(2,3))
m=0
do i2=1,3
do i1=1,2
 if (allocated(y(i1,i2)%a2))write(6,*) "NG"
 allocate(y(i1,i2)%a2(2,3))
 do j2=1,3
 do j1=1,2
   m=m-1
   allocate(y(i1,i2)%a2(j1,j2)%a2(2,3))
   y(i1,i2)%a2(j1,j2)%a2=char(-m*2)
 end do
 end do
end do
end do
end subroutine
subroutine chk(z,mask)
type(a)::z(:,:)
logical::mask(:,:)
m=0
do i2=1,3
do i1=1,2
 do j2=1,3
 do j1=1,2
   m=m+1
   if (mask(i1,i2))then
     if (any(z(i1,i2)%a2(j1,j2)%a2/=char(m*2)))write(6,*) "NG"
   else
     if (any(z(i1,i2)%a2(j1,j2)%a2/=char(+m)))write(6,*) "NG"
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
print *,'pass'
end