module m1
type a
  integer ::a1
  integer,allocatable::a2(:,:)
end type
type (a),allocatable::x(:,:),y(:,:),z(:,:),w(:,:)
logical(8),dimension(:,:),allocatable::mask
logical,parameter::t=.true.,f=.false.
integer,parameter::k1=1,k2=2,k3=3
contains
subroutine set_m
allocate(mask(2,3))
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
   x(i1,i2)%a2(j1,j2)=m*100
 end do
 end do
end do
end do
end subroutine
subroutine set_zw
allocate(z(2,3),w(2,3))
m=0
do i2=1,3
do i1=1,2
 if (allocated(z(i1,i2)%a2))write(6,*) "NG"
 if (allocated(w(i1,i2)%a2))write(6,*) "NG"
 allocate(z(i1,i2)%a2(2,3),w(i1,i2)%a2(2,3))
 do j2=1,3
 do j1=1,2
   m=m+1
   z(i1,i2)%a2(j1,j2)=m
   w(i1,i2)%a2(j1,j2)=-m
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
logical(8)::mask(:,:)
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
call set_zw
mask=t
where (mask)
x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
  where(.not.mask)
    x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
  else where
   where(.not.mask)
    x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
   else where(mask)
    x(k1:k2:k1,k1:k3:k1)=y(k1:k2:k1,k1:k3:k1)
   else where
    x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
   end where
  end where
else where
x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
end where
call chk(x,mask)
call set_x
where (mask)
x(k1:k2:k1,k1:k3:k1)=y(k1:k2:k1,k1:k3:k1)
x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
  where(.not.mask)
    x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
  else where
    x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
  end where
  where(.not.mask)
    x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
  else where
   where(.not.mask)
    x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
   else where(mask)
    x(k1:k2:k1,k1:k3:k1)=y(k1:k2:k1,k1:k3:k1)
   else where
    x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
   end where
  end where
else where
x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
end where
call chk(x,mask)
call set_x
mask(:,1)=t
mask(:,2)=f
mask(:,3)=t
where (mask)
x(k1:k2:k1,k1:k3:k1)=y(k1:k2:k1,k1:k3:k1)
x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
  where(.not.mask)
    x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
  else where
    x(k1:k2:k1,k1:k3:k1)=y(k1:k2:k1,k1:k3:k1)
   where(.not.mask)
    x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
   else where
    where(.not.mask)
     x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
    else where(mask)
     x(k1:k2:k1,k1:k3:k1)=y(k1:k2:k1,k1:k3:k1)
    else where
     x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
    end where
   end where
  end where
else where
x(k1:k2:k1,k1:k3:k1)=y(k1:k2:k1,k1:k3:k1)
  where(mask)
    x(k1:k2:k1,k1:k3:k1)=w(k1:k2:k1,k1:k3:k1)
  else where(mask)
    x(k1:k2:k1,k1:k3:k1)=w(k1:k2:k1,k1:k3:k1)
  else where(.not.mask)
    x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
  else where
    x(k1:k2:k1,k1:k3:k1)=w(k1:k2:k1,k1:k3:k1)
  end where
end where
call chk(x,mask)
call set_x
mask(:,1)=f
mask(:,2)=t
mask(:,3)=f
where (mask)
x(k1:k2:k1,k1:k3:k1)=y(k1:k2:k1,k1:k3:k1)
else where
x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
end where
where (mask)
x(k1:k2:k1,k1:k3:k1)=y(k1:k2:k1,k1:k3:k1)
x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
  where(.not.mask)
    x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
  else where
    x(k1:k2:k1,k1:k3:k1)=y(k1:k2:k1,k1:k3:k1)
   where(.not.mask)
    x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
   else where
    where(.not.mask)
     x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
    else where(.not.mask)
     x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
    else where(.not.mask)
     x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
    else where(mask)
     x(k1:k2:k1,k1:k3:k1)=y(k1:k2:k1,k1:k3:k1)
    else where
     x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
    end where
   end where
  end where
else where
x(k1:k2:k1,k1:k3:k1)=y(k1:k2:k1,k1:k3:k1)
  where(mask)
    x(k1:k2:k1,k1:k3:k1)=w(k1:k2:k1,k1:k3:k1)
  else where(mask)
    x(k1:k2:k1,k1:k3:k1)=w(k1:k2:k1,k1:k3:k1)
  else where(mask)
    x(k1:k2:k1,k1:k3:k1)=w(k1:k2:k1,k1:k3:k1)
  else where(mask)
    x(k1:k2:k1,k1:k3:k1)=w(k1:k2:k1,k1:k3:k1)
  else where(.not.mask)
    x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
  else where
    x(k1:k2:k1,k1:k3:k1)=w(k1:k2:k1,k1:k3:k1)
  end where
end where
call chk(x,mask)
call set_x
mask(1,:)=f
mask(2,:)=t
where (mask)
x(k1:k2:k1,k1:k3:k1)=y(k1:k2:k1,k1:k3:k1)
x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
  where(.not.mask)
    x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
  else where (.not.mask)
    x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
  else where (.not.mask)
    x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
  else where (.not.mask)
    x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
  else where (.not.mask)
    x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
  else where (mask)
    x(k1:k2:k1,k1:k3:k1)=y(k1:k2:k1,k1:k3:k1)
  end where
else where
x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
end where
call chk(x,mask)
call set_x
mask(1,:)=t
mask(2,:)=f
where (mask)
x(k1:k2:k1,k1:k3:k1)=y(k1:k2:k1,k1:k3:k1)
 where (.not.mask)
   x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
   x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
 end where
x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
  where(.not.mask)
    x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
  else where
    x(k1:k2:k1,k1:k3:k1)=y(k1:k2:k1,k1:k3:k1)
  end where
else where
x(k1:k2:k1,k1:k3:k1)=z(k1:k2:k1,k1:k3:k1)
end where
call chk(x,mask)
print *,'pass'
end
