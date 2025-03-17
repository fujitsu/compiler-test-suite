module m1
  integer::n1=1,n0=0
 contains
  function f01( x01,x02) result(f1)
    integer,dimension(:,:)::x01,x02
    integer::f1( 1+size(x01)-1:size(x02))
    f1=2
  end function
  function f02( x01,x02) result(f1)
    integer,dimension(:,:)::x01,x02
    integer::f1( size(x02):1+size(x01)-1)
    f1=2
  end function
  function f03( x01,x02) result(f1)
    integer,dimension(:,:)::x01,x02
    integer::f1( n0+size(x01):size(x02))
    f1=2
  end function
  function f04( x01,x02) result(f1)
    integer,dimension(:,:)::x01,x02
    integer::f1( size(x02):n0+size(x01))
    f1=2
  end function
  function f05( x01,x02) result(f1)
    integer,dimension(:,:)::x01,x02
    integer::f1( -size(x02):size(x01))
    f1=2
  end function
  function f06( x01,x02) result(f1)
    integer,dimension(:,:)::x01,x02
    integer::f1( -2:-size(x01))
    f1=2
  end function
  function f07( x01,x02) result(f1)
    integer,dimension(:,:)::x01,x02
    integer::f1( (size(x02)):size(x01))
    f1=2
  end function
  function f08( x01,x02) result(f1)
    integer,dimension(:,:)::x01,x02
    integer::f1( size(x02):(size(x01)))
    f1=2
  end function
  function f09( x01,x02) result(f1)
    integer,dimension(:,:)::x01,x02
    integer::f1( (+size(x02)):size(x01))
    f1=2
  end function
  function f0a( x01,x02) result(f1)
    integer,dimension(:,:)::x01,x02
    integer::f1( size(x02):(+size(x01)))
    f1=2
  end function
  function f0b( x01,x02) result(f1)
    integer,dimension(:,:)::x01,x02
    integer::f1( +(size(x02)):size(x01))
    f1=2
  end function
  function f0c( x01,x02) result(f1)
    integer,dimension(:,:)::x01,x02
    integer::f1( size(x02):+(size(x01)))
    f1=2
  end function
  function f0d( x01,x02) result(f1)
    integer,dimension(:,:)::x01,x02
    integer::f1( +size(x02):size(x01))
    f1=2
  end function
  function f0e( x01,x02) result(f1)
    integer,dimension(:,:)::x01,x02
    integer::f1( size(x02):+size(x01))
    f1=2
  end function
end
subroutine sub(i1)
 use m1
integer::b1(1,1),b3(i1,i1)
integer,allocatable::b2(:,:)
allocate(b2(1,1))
if (any(f07(b3,b1)/=2))write(6,*) "NG"
if (any(lbound(f07(b3,b1))/=1))write(6,*) "NG"
if (any(ubound(f07(b3,b1))/=1))write(6,*) "NG"
if (any(shape (f07(b3,b1))/=1))write(6,*) "NG"
if (   (size  (f07(b3,b1))/=1))write(6,*) "NG"
if (any(f07(b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f07(b2,b3))/=1))write(6,*) "NG"
if (any(ubound(f07(b2,b3))/=1))write(6,*) "NG"
if (any(shape (f07(b2,b3))/=1))write(6,*) "NG"
if (   (size  (f07(b2,b3))/=1))write(6,*) "NG"
if (any(f07(b3,b3)/=2))write(6,*) "NG"
if (any(lbound(f07(b1,b3))/=1))write(6,*) "NG"
if (any(ubound(f07(b1,b3))/=1))write(6,*) "NG"
if (any(shape (f07(b1,b3))/=1))write(6,*) "NG"
if (   (size  (f07(b1,b3))/=1))write(6,*) "NG"
if (any(f08(b3,b1)/=2))write(6,*) "NG"
if (any(lbound(f08(b3,b1))/=1))write(6,*) "NG"
if (any(ubound(f08(b3,b1))/=1))write(6,*) "NG"
if (any(shape (f08(b3,b1))/=1))write(6,*) "NG"
if (   (size  (f08(b3,b1))/=1))write(6,*) "NG"
if (any(f09(b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f09(b2,b3))/=1))write(6,*) "NG"
if (any(ubound(f09(b2,b3))/=1))write(6,*) "NG"
if (any(shape (f09(b2,b3))/=1))write(6,*) "NG"
if (   (size  (f09(b2,b3))/=1))write(6,*) "NG"
if (any(f09(b3,b3)/=2))write(6,*) "NG"
if (any(lbound(f09(b1,b3))/=1))write(6,*) "NG"
if (any(ubound(f09(b1,b3))/=1))write(6,*) "NG"
if (any(shape (f09(b1,b3))/=1))write(6,*) "NG"
if (   (size  (f09(b1,b3))/=1))write(6,*) "NG"
if (any(f09(b3,b1)/=2))write(6,*) "NG"
if (any(lbound(f09(b3,b1))/=1))write(6,*) "NG"
if (any(ubound(f09(b3,b1))/=1))write(6,*) "NG"
if (any(shape (f09(b3,b1))/=1))write(6,*) "NG"
if (   (size  (f09(b3,b1))/=1))write(6,*) "NG"
if (any(f0a(b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f0a(b2,b3))/=1))write(6,*) "NG"
if (any(ubound(f0a(b2,b3))/=1))write(6,*) "NG"
if (any(shape (f0a(b2,b3))/=1))write(6,*) "NG"
if (   (size  (f0a(b2,b3))/=1))write(6,*) "NG"
if (any(f0a(b3,b3)/=2))write(6,*) "NG"
if (any(lbound(f0a(b1,b3))/=1))write(6,*) "NG"
if (any(ubound(f0a(b1,b3))/=1))write(6,*) "NG"
if (any(shape (f0a(b1,b3))/=1))write(6,*) "NG"
if (   (size  (f0a(b1,b3))/=1))write(6,*) "NG"
if (any(f0a(b3,b1)/=2))write(6,*) "NG"
if (any(lbound(f0a(b3,b1))/=1))write(6,*) "NG"
if (any(ubound(f0a(b3,b1))/=1))write(6,*) "NG"
if (any(shape (f0a(b3,b1))/=1))write(6,*) "NG"
if (   (size  (f0a(b3,b1))/=1))write(6,*) "NG"
if (any(f0b(b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f0b(b2,b3))/=1))write(6,*) "NG"
if (any(ubound(f0b(b2,b3))/=1))write(6,*) "NG"
if (any(shape (f0b(b2,b3))/=1))write(6,*) "NG"
if (   (size  (f0b(b2,b3))/=1))write(6,*) "NG"
if (any(f0b(b3,b3)/=2))write(6,*) "NG"
if (any(lbound(f0b(b1,b3))/=1))write(6,*) "NG"
if (any(ubound(f0b(b1,b3))/=1))write(6,*) "NG"
if (any(shape (f0b(b1,b3))/=1))write(6,*) "NG"
if (   (size  (f0b(b1,b3))/=1))write(6,*) "NG"
if (any(f0b(b3,b1)/=2))write(6,*) "NG"
if (any(lbound(f0b(b3,b1))/=1))write(6,*) "NG"
if (any(ubound(f0b(b3,b1))/=1))write(6,*) "NG"
if (any(shape (f0b(b3,b1))/=1))write(6,*) "NG"
if (   (size  (f0b(b3,b1))/=1))write(6,*) "NG"
if (any(f0b(b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f0b(b2,b3))/=1))write(6,*) "NG"
if (any(ubound(f0b(b2,b3))/=1))write(6,*) "NG"
if (any(shape (f0b(b2,b3))/=1))write(6,*) "NG"
if (   (size  (f0b(b2,b3))/=1))write(6,*) "NG"
if (any(f0c(b3,b3)/=2))write(6,*) "NG"
if (any(lbound(f0c(b1,b3))/=1))write(6,*) "NG"
if (any(ubound(f0c(b1,b3))/=1))write(6,*) "NG"
if (any(shape (f0c(b1,b3))/=1))write(6,*) "NG"
if (   (size  (f0c(b1,b3))/=1))write(6,*) "NG"
if (any(f0c(b3,b1)/=2))write(6,*) "NG"
if (any(lbound(f0c(b3,b1))/=1))write(6,*) "NG"
if (any(ubound(f0c(b3,b1))/=1))write(6,*) "NG"
if (any(shape (f0c(b3,b1))/=1))write(6,*) "NG"
if (   (size  (f0c(b3,b1))/=1))write(6,*) "NG"
if (any(f0c(b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f0c(b2,b3))/=1))write(6,*) "NG"
if (any(ubound(f0c(b2,b3))/=1))write(6,*) "NG"
if (any(shape (f0c(b2,b3))/=1))write(6,*) "NG"
if (   (size  (f0c(b2,b3))/=1))write(6,*) "NG"
if (any(f0d(b3,b3)/=2))write(6,*) "NG"
if (any(lbound(f0d(b1,b3))/=1))write(6,*) "NG"
if (any(ubound(f0d(b1,b3))/=1))write(6,*) "NG"
if (any(shape (f0d(b1,b3))/=1))write(6,*) "NG"
if (   (size  (f0d(b1,b3))/=1))write(6,*) "NG"
if (any(f0d(b3,b1)/=2))write(6,*) "NG"
if (any(lbound(f0d(b3,b1))/=1))write(6,*) "NG"
if (any(ubound(f0d(b3,b1))/=1))write(6,*) "NG"
if (any(shape (f0d(b3,b1))/=1))write(6,*) "NG"
if (   (size  (f0d(b3,b1))/=1))write(6,*) "NG"
if (any(f0d(b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f0d(b2,b3))/=1))write(6,*) "NG"
if (any(ubound(f0d(b2,b3))/=1))write(6,*) "NG"
if (any(shape (f0d(b2,b3))/=1))write(6,*) "NG"
if (   (size  (f0d(b2,b3))/=1))write(6,*) "NG"
if (any(f0e(b3,b3)/=2))write(6,*) "NG"
if (any(lbound(f0e(b1,b3))/=1))write(6,*) "NG"
if (any(ubound(f0e(b1,b3))/=1))write(6,*) "NG"
if (any(shape (f0e(b1,b3))/=1))write(6,*) "NG"
if (   (size  (f0e(b1,b3))/=1))write(6,*) "NG"
if (any(f0e(b3,b1)/=2))write(6,*) "NG"
if (any(lbound(f0e(b3,b1))/=1))write(6,*) "NG"
if (any(ubound(f0e(b3,b1))/=1))write(6,*) "NG"
if (any(shape (f0e(b3,b1))/=1))write(6,*) "NG"
if (   (size  (f0e(b3,b1))/=1))write(6,*) "NG"
if (any(f0e(b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f0e(b2,b3))/=1))write(6,*) "NG"
if (any(ubound(f0e(b2,b3))/=1))write(6,*) "NG"
if (any(shape (f0e(b2,b3))/=1))write(6,*) "NG"
if (   (size  (f0e(b2,b3))/=1))write(6,*) "NG"
if (any(f0e(b3,b3)/=2))write(6,*) "NG"
if (any(f06(b3,b1)/=2))write(6,*) "NG"
if (any(lbound(f06(b3,b1))/=-2))write(6,*) "NG"
if (any(ubound(f06(b3,b1))/=-1))write(6,*) "NG"
if (any(shape (f06(b3,b1))/=2))write(6,*) "NG"
if (   (size  (f06(b3,b1))/=2))write(6,*) "NG"
if (any(f06(b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f06(b2,b3))/=-2))write(6,*) "NG"
if (any(ubound(f06(b2,b3))/=-1))write(6,*) "NG"
if (any(shape (f06(b2,b3))/=2))write(6,*) "NG"
if (   (size  (f06(b2,b3))/=2))write(6,*) "NG"
if (any(f06(b3,b3)/=2))write(6,*) "NG"
if (any(lbound(f06(b1,b3))/=-2))write(6,*) "NG"
if (any(ubound(f06(b1,b3))/=-1))write(6,*) "NG"
if (any(shape (f06(b1,b3))/=2))write(6,*) "NG"
if (   (size  (f06(b1,b3))/=2))write(6,*) "NG"
if (any(f05(b3,b1)/=2))write(6,*) "NG"
if (any(lbound(f05(b3,b1))/=-1))write(6,*) "NG"
if (any(ubound(f05(b3,b1))/=1))write(6,*) "NG"
if (any(shape (f05(b3,b1))/=3))write(6,*) "NG"
if (   (size  (f05(b3,b1))/=3))write(6,*) "NG"
if (any(f05(b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f05(b2,b3))/=-1))write(6,*) "NG"
if (any(ubound(f05(b2,b3))/=1))write(6,*) "NG"
if (any(shape (f05(b2,b3))/=3))write(6,*) "NG"
if (   (size  (f05(b2,b3))/=3))write(6,*) "NG"
if (any(f05(b3,b3)/=2))write(6,*) "NG"
if (any(lbound(f05(b1,b3))/=-1))write(6,*) "NG"
if (any(ubound(f05(b1,b3))/=1))write(6,*) "NG"
if (any(shape (f05(b1,b3))/=3))write(6,*) "NG"
if (   (size  (f05(b1,b3))/=3))write(6,*) "NG"
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
if (any(f03(b3,b1)/=2))write(6,*) "NG"
if (any(lbound(f03(b3,b1))/=1))write(6,*) "NG"
if (any(ubound(f03(b3,b1))/=1))write(6,*) "NG"
if (any(shape (f03(b3,b1))/=1))write(6,*) "NG"
if (   (size  (f03(b3,b1))/=1))write(6,*) "NG"
if (any(f03(b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f03(b2,b3))/=1))write(6,*) "NG"
if (any(ubound(f03(b2,b3))/=1))write(6,*) "NG"
if (any(shape (f03(b2,b3))/=1))write(6,*) "NG"
if (   (size  (f03(b2,b3))/=1))write(6,*) "NG"
if (any(f03(b3,b3)/=2))write(6,*) "NG"
if (any(lbound(f03(b1,b3))/=1))write(6,*) "NG"
if (any(ubound(f03(b1,b3))/=1))write(6,*) "NG"
if (any(shape (f03(b1,b3))/=1))write(6,*) "NG"
if (   (size  (f03(b1,b3))/=1))write(6,*) "NG"
if (any(f04(b3,b1)/=2))write(6,*) "NG"
if (any(lbound(f04(b3,b1))/=1))write(6,*) "NG"
if (any(ubound(f04(b3,b1))/=1))write(6,*) "NG"
if (any(shape (f04(b3,b1))/=1))write(6,*) "NG"
if (   (size  (f04(b3,b1))/=1))write(6,*) "NG"
if (any(f04(b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f04(b2,b3))/=1))write(6,*) "NG"
if (any(ubound(f04(b2,b3))/=1))write(6,*) "NG"
if (any(shape (f04(b2,b3))/=1))write(6,*) "NG"
if (   (size  (f04(b2,b3))/=1))write(6,*) "NG"
if (any(f04(b3,b3)/=2))write(6,*) "NG"
if (any(lbound(f04(b1,b3))/=1))write(6,*) "NG"
if (any(ubound(f04(b1,b3))/=1))write(6,*) "NG"
if (any(shape (f04(b1,b3))/=1))write(6,*) "NG"
if (   (size  (f04(b1,b3))/=1))write(6,*) "NG"
end
call sub(1)
print *,'pass'
end
