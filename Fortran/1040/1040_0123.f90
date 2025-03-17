module m1
  integer,save::y(10,10,10,10)
  integer,parameter::p=3
  integer::i1=1,i2=2,i3=3
 integer,parameter,dimension(2)::pad=(/3,4/)
 integer,parameter,dimension(3+2,1,1)::ya1=reshape((/1,1001,2001,pad/),(/3+2,1,1/))
  contains
  function f01(d,e) result(r)
  integer::d(:),e(:)
  integer::r( 0-2:size(e),1,1)
  r=reshape((/d,pad/),(/2+p,1,1/))
  end function
  function f11(d,e) result(r)
  integer::d(:),e(:)
  integer::r( 0-2:size(e),1,i1)
  r=reshape((/d,pad/),(/2+p,1,1/))
  end function
end
module m2
use m1
contains
subroutine s01(d)
integer::d(:)
do j1=1,i1
if (any(f01(d(1:3),d(1:2))+f01(d(1:3),d(1:2))+f01(d(1:3),d(1:2))/=3*ya1))write(6,*) "NG"
if (any(f01(d(1:3),d(j1:2))+f01(d(1:3),d(j1:2))+f01(d(1:3),d(j1:2))/=3*ya1))write(6,*) "NG"
if (any(f01(d(1:3),d(j1:2))+f01(d(1:3),d(1:2))+f01(d(1:3),d(j1:2))/=3*ya1))write(6,*) "NG"
if (any(f01(d(1:3),d(j1:2))+f01(d(1:3),d(1:2))+f01(d(1:3),d(1:2))/=3*ya1))write(6,*) "NG"
if (any(f11(d(1:3),d(1:2))+f01(d(1:3),d(1:2))+f01(d(1:3),d(1:2))/=3*ya1))write(6,*) "NG"
if (any(f11(d(1:3),d(j1:2))+f01(d(1:3),d(j1:2))+f01(d(1:3),d(j1:2))/=3*ya1))write(6,*) "NG"
if (any(f11(d(1:3),d(j1:2))+f01(d(1:3),d(1:2))+f01(d(1:3),d(j1:2))/=3*ya1))write(6,*) "NG"
if (any(f11(d(1:3),d(j1:2))+f01(d(1:3),d(1:2))+f01(d(1:3),d(1:2))/=3*ya1))write(6,*) "NG"
if (any(f11(d(1:3),d(1:2))+f11(d(1:3),d(1:2))+f01(d(1:3),d(1:2))/=3*ya1))write(6,*) "NG"
if (any(f11(d(1:3),d(j1:2))+f11(d(1:3),d(j1:2))+f01(d(1:3),d(j1:2))/=3*ya1))write(6,*) "NG"
if (any(f11(d(1:3),d(j1:2))+f11(d(1:3),d(1:2))+f01(d(1:3),d(j1:2))/=3*ya1))write(6,*) "NG"
if (any(f11(d(1:3),d(j1:2))+f11(d(1:3),d(1:2))+f01(d(1:3),d(1:2))/=3*ya1))write(6,*) "NG"
if (any(f11(d(1:3),d(1:2))+f11(d(1:3),d(1:2))+f11(d(1:3),d(1:2))/=3*ya1))write(6,*) "NG"
if (any(f11(d(1:3),d(j1:2))+f11(d(1:3),d(j1:2))+f11(d(1:3),d(j1:2))/=3*ya1))write(6,*) "NG"
if (any(f11(d(1:3),d(j1:2))+f11(d(1:3),d(1:2))+f11(d(1:3),d(j1:2))/=3*ya1))write(6,*) "NG"
if (any(f11(d(1:3),d(j1:2))+f11(d(1:3),d(1:2))+f11(d(1:3),d(1:2))/=3*ya1))write(6,*) "NG"
end do
end subroutine
end
use m2
y=reshape((/(i,i=1,10000)/),(/10,10,10,10/))
call s01(y(1,1,1,:10))
print *,'pass'
end
