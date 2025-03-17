module m1
  integer::n1=1
 contains
  function f01( x01,x02) result(f1)
    integer,dimension(:,:)::x01,x02
    integer::f1( ubound(x01,1):size(x02))
    f1=2
  end function
  function f02( x01,x02) result(f1)
    integer,dimension(:,:)::x01,x02
    integer::f1( size(x02):ubound(x01,1))
    f1=2
  end function
  function f03( x01,x02,k) result(f1)
    integer,dimension(:,:)::x01,x02
    integer::f1( k            :size(x02))
    f1=2
  end function
  function f04( x01,x02,k) result(f1)
    integer,dimension(:,:)::x01,x02
    integer::f1( size(x02):k)
    f1=2
  end function
end
subroutine sub(i1)
 use m1
integer::b1(1,1),b3(i1,i1)
integer,allocatable::b2(:,:)
allocate(b2(1,1))
if (any(f01(b3,b1)/=2))write(6,*) "NG"
if (any(lbound(f01(b3,b1))/=1))write(6,*) "NG"
if (any(ubound(f01(b3,b1))/=1))write(6,*) "NG"
if (any(shape (f01(b3,b1))/=1))write(6,*) "NG"
if (   (size  (f01(b3,b1))/=1))write(6,*) "NG"
if (any(f01(b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f01(b2,b3))/=1))write(6,*) "NG"
if (any(ubound(f01(b2,b3))/=1))write(6,*) "NG"
if (any(shape (f01(b2,b3))/=1))write(6,*) "NG"
if (   (size  (f01(b2,b3))/=1))write(6,*) "NG"
if (any(f01(b3,b3)/=2))write(6,*) "NG"
if (any(lbound(f01(b1,b3))/=1))write(6,*) "NG"
if (any(ubound(f01(b1,b3))/=1))write(6,*) "NG"
if (any(shape (f01(b1,b3))/=1))write(6,*) "NG"
if (   (size  (f01(b1,b3))/=1))write(6,*) "NG"
if (any(f02(b3,b1)/=2))write(6,*) "NG"
if (any(lbound(f02(b3,b1))/=1))write(6,*) "NG"
if (any(ubound(f02(b3,b1))/=1))write(6,*) "NG"
if (any(shape (f02(b3,b1))/=1))write(6,*) "NG"
if (   (size  (f02(b3,b1))/=1))write(6,*) "NG"
if (any(f02(b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f02(b2,b3))/=1))write(6,*) "NG"
if (any(ubound(f02(b2,b3))/=1))write(6,*) "NG"
if (any(shape (f02(b2,b3))/=1))write(6,*) "NG"
if (   (size  (f02(b2,b3))/=1))write(6,*) "NG"
if (any(f02(b3,b3)/=2))write(6,*) "NG"
if (any(lbound(f02(b1,b3))/=1))write(6,*) "NG"
if (any(ubound(f02(b1,b3))/=1))write(6,*) "NG"
if (any(shape (f02(b1,b3))/=1))write(6,*) "NG"
if (   (size  (f02(b1,b3))/=1))write(6,*) "NG"
if (any(f03(b3,b1,1)/=2))write(6,*) "NG"
if (any(lbound(f03(b3,b1,1))/=1))write(6,*) "NG"
if (any(ubound(f03(b3,b1,1))/=1))write(6,*) "NG"
if (any(shape (f03(b3,b1,1))/=1))write(6,*) "NG"
if (   (size  (f03(b3,b1,1))/=1))write(6,*) "NG"
if (any(f03(b2,b2,1)/=2))write(6,*) "NG"
if (any(lbound(f03(b2,b3,1))/=1))write(6,*) "NG"
if (any(ubound(f03(b2,b3,1))/=1))write(6,*) "NG"
if (any(shape (f03(b2,b3,1))/=1))write(6,*) "NG"
if (   (size  (f03(b2,b3,1))/=1))write(6,*) "NG"
if (any(f03(b3,b3,1)/=2))write(6,*) "NG"
if (any(lbound(f03(b1,b3,1))/=1))write(6,*) "NG"
if (any(ubound(f03(b1,b3,1))/=1))write(6,*) "NG"
if (any(shape (f03(b1,b3,1))/=1))write(6,*) "NG"
if (   (size  (f03(b1,b3,1))/=1))write(6,*) "NG"
if (any(f04(b3,b1,1)/=2))write(6,*) "NG"
if (any(lbound(f04(b3,b1,1))/=1))write(6,*) "NG"
if (any(ubound(f04(b3,b1,1))/=1))write(6,*) "NG"
if (any(shape (f04(b3,b1,1))/=1))write(6,*) "NG"
if (   (size  (f04(b3,b1,1))/=1))write(6,*) "NG"
if (any(f04(b2,b2,1)/=2))write(6,*) "NG"
if (any(lbound(f04(b2,b3,1))/=1))write(6,*) "NG"
if (any(ubound(f04(b2,b3,1))/=1))write(6,*) "NG"
if (any(shape (f04(b2,b3,1))/=1))write(6,*) "NG"
if (   (size  (f04(b2,b3,1))/=1))write(6,*) "NG"
if (any(f04(b3,b3,1)/=2))write(6,*) "NG"
if (any(lbound(f04(b1,b3,1))/=1))write(6,*) "NG"
if (any(ubound(f04(b1,b3,1))/=1))write(6,*) "NG"
if (any(shape (f04(b1,b3,1))/=1))write(6,*) "NG"
if (   (size  (f04(b1,b3,1))/=1))write(6,*) "NG"
end
call sub(1)
print *,'pass'
end
