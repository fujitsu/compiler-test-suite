module m1
 contains
  function f1(x)
    integer::x(:,:)
    integer,pointer::f1(:)
    allocate(f1(0:size(x)))
    f1=x(2,3)
  end function
  function f2(x)
    integer::x(:,:)
    integer,allocatable::f2(:)
    allocate(f2(0:size(x)))
    f2=x(2,3)
  end function
end
subroutine sub(i2,i3)
 use m1
integer::b1(2,3),b3(i2,i3)
integer,allocatable::b2(:,:)
allocate(b2(2,3))
b1(2,3)=2;b2(2,3)=2;b3(2,3)=2
if (any(f1(b1)/=2))write(6,*) "NG"
if (any(lbound(f1(b1))/=0))write(6,*) "NG"
if (any(ubound(f1(b1))/=6))write(6,*) "NG"
if (any(shape (f1(b1))/=7))write(6,*) "NG"
if (   (size  (f1(b1))/=7))write(6,*) "NG"
if (any(f1(b2)/=2))write(6,*) "NG"
if (any(lbound(f1(b2))/=0))write(6,*) "NG"
if (any(ubound(f1(b2))/=6))write(6,*) "NG"
if (any(shape (f1(b2))/=7))write(6,*) "NG"
if (   (size  (f1(b2))/=7))write(6,*) "NG"
if (any(f1(b3)/=2))write(6,*) "NG"
if (any(lbound(f1(b3))/=0))write(6,*) "NG"
if (any(ubound(f1(b3))/=6))write(6,*) "NG"
if (any(shape (f1(b3))/=7))write(6,*) "NG"
if (   (size  (f1(b3))/=7))write(6,*) "NG"
if (any(f2(b1)/=2))write(6,*) "NG"
if (any(lbound(f2(b1))/=0))write(6,*) "NG"
if (any(ubound(f2(b1))/=6))write(6,*) "NG"
if (any(shape (f2(b1))/=7))write(6,*) "NG"
if (   (size  (f2(b1))/=7))write(6,*) "NG"
if (any(f2(b2)/=2))write(6,*) "NG"
if (any(lbound(f2(b2))/=0))write(6,*) "NG"
if (any(ubound(f2(b2))/=6))write(6,*) "NG"
if (any(shape (f2(b2))/=7))write(6,*) "NG"
if (   (size  (f2(b2))/=7))write(6,*) "NG"
if (any(f2(b3)/=2))write(6,*) "NG"
if (any(lbound(f2(b3))/=0))write(6,*) "NG"
if (any(ubound(f2(b3))/=6))write(6,*) "NG"
if (any(shape (f2(b3))/=7))write(6,*) "NG"
if (   (size  (f2(b3))/=7))write(6,*) "NG"
end
call sub(2,3)
print *,'pass'
end
