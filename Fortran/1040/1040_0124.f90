module m1
  integer,save::y(4,1,1,10)
 integer::i2=2
  contains
  function f00(d) result(r)
  integer::d(:)
  integer::r(5,5,5,2)
  integer::y(5,5,5,2)
  r=d(1)
  write(1,*)shape(y)
  end function
  function f01(d) result(r)
  integer::d(:)
  integer::r(5,5,5,size(d))
  integer::y(5,5,5,2)
  r=d(1)
  write(1,*)shape(y)
  end function
end
module m2
use m1
contains
subroutine s00(d)
integer::d(:)
  if (any(f00(d(1:4))/=1))write(6,*) "NG"
  if (size(f00(d(1:4)))/=5*5*5*2)write(6,*) "NG"
  if (any(lbound(f00(d(1:4)))/=(/1,1,1,1/)))write(6,*) "NG"
  if (any(ubound(f00(d(1:4)))/=(/5,5,5,2/)))write(6,*) "NG"
  if (any(f01(d(1:4))/=1))write(6,*) "NG"
  if (size(f01(d(1:4)))/=5*5*5*4)write(6,*) "NG"
  if (any(lbound(f01(d(1:4)))/=(/1,1,1,1/)))write(6,*) "NG"
  if (any(ubound(f01(d(1:4)))/=(/5,5,5,4/)))write(6,*) "NG"
end subroutine
end
use m2
y=reshape((/(i,i=1,40)/),(/4,1,1,10/))
call s00(y(1,1,1,:10))
print *,'pass'
end
