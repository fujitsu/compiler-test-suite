module m1
  type x
    integer,allocatable::a(:)
  end type
end
use m1
type(x)::v(3)
call sub(v,1,2,3)
print *,'pass'
contains
subroutine sub(v,i1,i2,i3)
 use m1
  type(x)::v(:),w
  allocate(v(1)%a(3));v(1)%a=(/1,2,3/)
  allocate(v(2)%a(4));v(2)%a=(/5,6,7,8/)
  allocate(v(3)%a(5));v(3)%a=(/9,10,11,12,13/)
  allocate(w%a(10));w%a=(/(j,j=-1,-10,-1)/)
  if (any(v(1)%a/=(/1,2,3/)))write(6,*) "NG"
  if (any(shape(v(1)%a)/=3))write(6,*) "NG"
  if (any(v(2)%a/=(/5,6,7,8/)))write(6,*) "NG"
  if (any(shape(v(2)%a)/=4))write(6,*) "NG"
  if (any(v(3)%a/=(/9,10,11,12,13/)))write(6,*) "NG"
  if (any(shape(v(3)%a)/=5))write(6,*) "NG"
  if (any(w%a/=(/(j,j=-1,-10,-1)/)))write(6,*) "NG"
  if (any(shape(w%a)/=10))write(6,*) "NG"
  v(2:2)=w
  if (any(v(1)%a/=(/1,2,3/)))write(6,*) "NG"
  if (any(shape(v(1)%a)/=3))write(6,*) "NG"
  if (any(v(2)%a/=(/(j,j=-1,-10,-1)/)))write(6,*) "NG"
  if (any(shape(v(2)%a)/=10))write(6,*) "NG"
  if (any(v(3)%a/=(/9,10,11,12,13/)))write(6,*) "NG"
  if (any(shape(v(3)%a)/=5))write(6,*) "NG"
  if (any(w%a/=(/(j,j=-1,-10,-1)/)))write(6,*) "NG"
  if (any(shape(w%a)/=10))write(6,*) "NG"
  v(i3:i3:i1)=w
  if (any(v(1)%a/=(/1,2,3/)))write(6,*) "NG"
  if (any(shape(v(1)%a)/=3))write(6,*) "NG"
  if (any(v(2)%a/=(/(j,j=-1,-10,-1)/)))write(6,*) "NG"
  if (any(shape(v(2)%a)/=10))write(6,*) "NG"
  if (any(v(3)%a/=(/(j,j=-1,-10,-1)/)))write(6,*) "NG"
  if (any(shape(v(3)%a)/=10))write(6,*) "NG"
  if (any(w%a/=(/(j,j=-1,-10,-1)/)))write(6,*) "NG"
  if (any(shape(w%a)/=10))write(6,*) "NG"
end subroutine
end
