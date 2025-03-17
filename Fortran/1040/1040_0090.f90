module m1
  integer::n1=1
 contains
  function f01( x01,x11 ) result(f1)
    integer,dimension(:,:)::x01,x11
    integer::f1(size(x11):size(x01))
    f1=2
  end function
end
subroutine sub(i1)
 use m1
integer::b1(1,1),b3(i1,i1)
integer,allocatable::b2(:,:)
allocate(b2(1,1))
if (any(f01(b1,b2)/=2))write(6,*) "NG"
if (any(lbound(f01(b1,b2))/=1))write(6,*) "NG"
if (any(ubound(f01(b1,b2))/=1))write(6,*) "NG"
if (any(shape (f01(b1,b2))/=1))write(6,*) "NG"
if (   (size  (f01(b1,b2))/=1))write(6,*) "NG"
if (any(f01(b1,b3)/=2))write(6,*) "NG"
if (any(lbound(f01(b1,b3))/=1))write(6,*) "NG"
if (any(ubound(f01(b1,b3))/=1))write(6,*) "NG"
if (any(shape (f01(b1,b3))/=1))write(6,*) "NG"
if (   (size  (f01(b1,b3))/=1))write(6,*) "NG"
if (any(f01(b2,b1)/=2))write(6,*) "NG"
if (any(lbound(f01(b2,b1))/=1))write(6,*) "NG"
if (any(ubound(f01(b2,b1))/=1))write(6,*) "NG"
if (any(shape (f01(b2,b1))/=1))write(6,*) "NG"
if (   (size  (f01(b2,b1))/=1))write(6,*) "NG"
if (any(f01(b2,b3)/=2))write(6,*) "NG"
if (any(lbound(f01(b2,b3))/=1))write(6,*) "NG"
if (any(ubound(f01(b2,b3))/=1))write(6,*) "NG"
if (any(shape (f01(b2,b3))/=1))write(6,*) "NG"
if (   (size  (f01(b2,b3))/=1))write(6,*) "NG"
if (any(f01(b3,b1)/=2))write(6,*) "NG"
if (any(lbound(f01(b3,b1))/=1))write(6,*) "NG"
if (any(ubound(f01(b3,b1))/=1))write(6,*) "NG"
if (any(shape (f01(b3,b1))/=1))write(6,*) "NG"
if (   (size  (f01(b3,b1))/=1))write(6,*) "NG"
if (any(f01(b3,b2)/=2))write(6,*) "NG"
if (any(lbound(f01(b3,b2))/=1))write(6,*) "NG"
if (any(ubound(f01(b3,b2))/=1))write(6,*) "NG"
if (any(shape (f01(b3,b2))/=1))write(6,*) "NG"
if (   (size  (f01(b3,b2))/=1))write(6,*) "NG"
end
call sub(1)
print *,'pass'
end
