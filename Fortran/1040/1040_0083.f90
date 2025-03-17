module m1
  integer::n1=1
 contains
  function f01( x01,x02,x03,x04,x05,x06,x07,x11,x12,x13,x14,x15,x16,x17 ) result(f1)
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06,x07,x11,x12,x13,x14,x15,x16,x17
    integer::f1( size(x11):size(x01),size(x12):size(x02),size(x13):size(x03),size(x14):size(x04),size(x15):size(x05), size(x16):size(x06),size(x17):size(x07) )
    f1=2
  end function
end
subroutine sub(i1)
 use m1
integer::b1(1,1),b3(i1,i1)
integer,allocatable::b2(:,:)
allocate(b2(1,1))
if (any(f01(b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1)/=2))write(6,*) "NG"
if (any(lbound(f01(b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(ubound(f01(b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(shape (f01(b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (   (size  (f01(b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(f01(b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f01(b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(ubound(f01(b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(shape (f01(b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (   (size  (f01(b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(f01(b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3)/=2))write(6,*) "NG"
if (any(lbound(f01(b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(ubound(f01(b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(shape (f01(b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (   (size  (f01(b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
end
call sub(1)
print *,'pass'
end
