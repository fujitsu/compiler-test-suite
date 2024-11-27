  module m1
    type x
      integer::x1
      integer,allocatable::x2(:)
      type(x),pointer::x3(:)
    end type
  end
subroutine s1(ii)
use m1
type(x),pointer::v(:)
allocate (v(2))
v(1)%x1=101
v(2)%x1=101
if (allocated(v(1)%x2))write(6,*) "NG"
if (allocated(v(2)%x2))write(6,*) "NG"
allocate (v(1)%x2(10))
allocate (v(ii)%x2(10))
v(1)%x2=(/(j,j=101,110)/)
v(ii)%x2=(/(j,j=101,110)/)
allocate (v( 1)%x3(ii))
allocate (v(ii)%x3(ii))
v( 1)%x3(1)%x1=201
v(ii)%x3(1)%x1=201
v( 1)%x3(ii)%x1=201
v(ii)%x3(ii)%x1=201
do j1=1,ii
do j2=1,ii
if (allocated(v(j1)%x3(j2)%x2))write(6,*) "NG"
end do
end do
do j1=1,ii
do j2=1,ii
v(j1)%x3(j2)%x3=>null()
allocate (v(j1)%x3(j2)%x2(10))
v(j1)%x3(j2)%x2=(/(j,j=201,210)/)
if (any(v(j1)%x3(j2)%x2/=(/(j,j=201,210)/)))write(6,*) "NG"
end do
end do
deallocate (v(1)%x3)
deallocate (v(ii)%x3)
deallocate (v)
end
do i=1,10
 call s1(2)
end do
print *,'pass'
end
