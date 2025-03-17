module m1
  integer::n1=1
 contains
  function f01( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( size(x04):size(x01),size(x05):size(x02),size(x06):size(x03))
    f1=2
  end function
  function f02( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( n1       :size(x01),size(x05):size(x02),size(x06):size(x03))
    f1=2
  end function
  function f03( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( size(x04):n1       ,size(x05):size(x02),size(x06):size(x03))
    f1=2
  end function
  function f04( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( size(x04):size(x01),n1       :size(x02),size(x06):size(x03))
    f1=2
  end function
  function f05( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( size(x04):size(x01),size(x05):n1       ,size(x06):size(x03))
    f1=2
  end function
  function f06( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( size(x04):size(x01),size(x05):size(x02),n1       :size(x03))
    f1=2
  end function
  function f07( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( size(x04):size(x01),size(x05):size(x02),size(x06):n1       )
    f1=2
  end function
  function f11( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( 1        :size(x01),size(x05):size(x02),size(x06):size(x03))
    f1=2
  end function
  function f12( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( n1       :1        ,size(x05):size(x02),size(x06):size(x03))
    f1=2
  end function
  function f13( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( size(x04):n1       ,1        :size(x02),size(x06):size(x03))
    f1=2
  end function
  function f14( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( size(x04):size(x01),n1       :1        ,size(x06):size(x03))
    f1=2
  end function
  function f15( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( size(x04):size(x01),size(x05):n1       ,1        :size(x03))
    f1=2
  end function
  function f16( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( size(x04):size(x01),size(x05):size(x02),n1       :1        )
    f1=2
  end function
  function f17( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( 1        :size(x01),size(x05):size(x02),size(x06):n1       )
    f1=2
  end function
  function f21( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( size(x04):1        ,size(x05):size(x02),size(x06):size(x03))
    f1=2
  end function
  function f22( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( n1       :size(x01),size(x05):size(x02),size(x06):1        )
    f1=2
  end function
  function f23( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( size(x04):n1       ,size(x05):size(x02),1        :size(x03))
    f1=2
  end function
  function f24( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( size(x04):size(x01),n1       :1        ,size(x06):size(x03))
    f1=2
  end function
  function f25( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( size(x04):size(x01),1        :n1       ,size(x06):size(x03))
    f1=2
  end function
  function f26( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( size(x04):1        ,size(x05):size(x02),n1       :size(x03))
    f1=2
  end function
  function f27( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( 1        :size(x01),size(x05):size(x02),size(x06):n1       )
    f1=2
  end function
  function f31( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( 1        :1        ,size(x05):size(x02),size(x06):size(x03))
    f1=2
  end function
  function f32( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( n1       :1        ,1        :size(x02),size(x06):size(x03))
    f1=2
  end function
  function f33( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( size(x04):n1       ,1        :1        ,size(x06):size(x03))
    f1=2
  end function
  function f34( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( size(x04):size(x01),n1       :1        ,1        :size(x03))
    f1=2
  end function
  function f35( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( size(x04):size(x01),size(x05):n1       ,1        :1        )
    f1=2
  end function
  function f36( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( size(x04):size(x01),size(x05):1        ,n1       :1        )
    f1=2
  end function
  function f37( x01,x02,x03,x04,x05,x06 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06
    integer::f1( 1        :size(x01),size(x05):size(x02),1        :n1       )
    f1=2
  end function
end
subroutine sub(i1)
 use m1
integer::b1(1,1),b3(i1,i1)
integer,allocatable::b2(:,:)
allocate(b2(1,1))
if (any(f21(b1,b1,b1,b1,b1,b1)/=2))write(6,*) "NG"
if (any(lbound(f21(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(ubound(f21(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(shape (f21(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (   (size  (f21(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(f21(b2,b2,b2,b2,b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f21(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(ubound(f21(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(shape (f21(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (   (size  (f21(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(f21(b3,b3,b3,b3,b3,b3)/=2))write(6,*) "NG"
if (any(lbound(f21(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(ubound(f21(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(shape (f21(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (   (size  (f21(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(f22(b1,b1,b1,b1,b1,b1)/=2))write(6,*) "NG"
if (any(lbound(f22(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(ubound(f22(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(shape (f22(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (   (size  (f22(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(f22(b2,b2,b2,b2,b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f22(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(ubound(f22(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(shape (f22(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (   (size  (f22(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(f22(b3,b3,b3,b3,b3,b3)/=2))write(6,*) "NG"
if (any(lbound(f22(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(ubound(f22(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(shape (f22(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (   (size  (f22(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(f23(b1,b1,b1,b1,b1,b1)/=2))write(6,*) "NG"
if (any(lbound(f23(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(ubound(f23(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(shape (f23(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (   (size  (f23(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(f23(b2,b2,b2,b2,b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f23(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(ubound(f23(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(shape (f23(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (   (size  (f23(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(f23(b3,b3,b3,b3,b3,b3)/=2))write(6,*) "NG"
if (any(lbound(f23(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(ubound(f23(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(shape (f23(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (   (size  (f23(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(f24(b1,b1,b1,b1,b1,b1)/=2))write(6,*) "NG"
if (any(lbound(f24(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(ubound(f24(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(shape (f24(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (   (size  (f24(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(f24(b2,b2,b2,b2,b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f24(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(ubound(f24(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(shape (f24(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (   (size  (f24(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(f24(b3,b3,b3,b3,b3,b3)/=2))write(6,*) "NG"
if (any(lbound(f24(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(ubound(f24(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(shape (f24(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (   (size  (f24(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(f25(b1,b1,b1,b1,b1,b1)/=2))write(6,*) "NG"
if (any(lbound(f25(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(ubound(f25(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(shape (f25(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (   (size  (f25(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(f25(b2,b2,b2,b2,b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f25(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(ubound(f25(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(shape (f25(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (   (size  (f25(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(f25(b3,b3,b3,b3,b3,b3)/=2))write(6,*) "NG"
if (any(lbound(f25(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(ubound(f25(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(shape (f25(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (   (size  (f25(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(f26(b1,b1,b1,b1,b1,b1)/=2))write(6,*) "NG"
if (any(lbound(f26(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(ubound(f26(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(shape (f26(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (   (size  (f26(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(f26(b2,b2,b2,b2,b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f26(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(ubound(f26(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(shape (f26(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (   (size  (f26(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(f26(b3,b3,b3,b3,b3,b3)/=2))write(6,*) "NG"
if (any(lbound(f26(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(ubound(f26(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(shape (f26(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (   (size  (f26(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(f27(b1,b1,b1,b1,b1,b1)/=2))write(6,*) "NG"
if (any(lbound(f27(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(ubound(f27(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(shape (f27(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (   (size  (f27(b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(f27(b2,b2,b2,b2,b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f27(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(ubound(f27(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(shape (f27(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (   (size  (f27(b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(f27(b3,b3,b3,b3,b3,b3)/=2))write(6,*) "NG"
if (any(lbound(f27(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(ubound(f27(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(shape (f27(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (   (size  (f27(b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
end
call sub(1)
print *,'pass'
end
