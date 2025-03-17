module m1
type a
  integer ::a1
  integer,allocatable::a2(:,:)
end type
type (a),allocatable::w(:,:)
contains
subroutine set_zw(z)
type (a),allocatable::z(:,:)
allocate(z(2,3),w(2,3))
z(1,1)%a1=1
w(1,1)%a1=2
end subroutine
end
use m1
type (a),allocatable::z(:,:)
call set_zw(z)
if(z(1,1)%a1/=1)print *,'error-1'
if(w(1,1)%a1/=2)print *,'error-2'
print *,'pass'
end
