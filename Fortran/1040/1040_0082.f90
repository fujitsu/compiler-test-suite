module m1
 contains
  function f1( x01,x02,x03,x04,x05,x06,x07 )
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06,x07
    integer::f1(&
       0:size(x01),0:size(x02),0:size(x03),0:size(x04),0:size(x05),&
       0:size(x06),0:size(x07) )
    f1=2
  end function
  function f2( x01,x02,x03,x04,x05,x06,x07 )
    integer,dimension(:,:)::x01,x02,x03,x04,x05,x06,x07
    integer::f2(&
       size(x01):2,size(x02):2,size(x03):2,size(x04):2,size(x05):2,&
       size(x06):2,size(x07):2 )
    f2=2
  end function
end
subroutine sub(i1)
 use m1
integer::b1(1,1),b3(i1,i1)
integer,allocatable::b2(:,:)
allocate(b2(1,1))
if (any(f1(b1,b1,b1,b1,b1,b1,b1)/=2))write(6,*) "NG"
if (any(lbound(f1(b1,b1,b1,b1,b1,b1,b1))/=0))write(6,*) "NG"
if (any(ubound(f1(b1,b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(shape (f1(b1,b1,b1,b1,b1,b1,b1))/=2))write(6,*) "NG"
if (   (size  (f1(b1,b1,b1,b1,b1,b1,b1))/=2**7))write(6,*) "NG"
if (any(f1(b2,b2,b2,b2,b2,b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f1(b2,b2,b2,b2,b2,b2,b2))/=0))write(6,*) "NG"
if (any(ubound(f1(b2,b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(shape (f1(b2,b2,b2,b2,b2,b2,b2))/=2))write(6,*) "NG"
if (   (size  (f1(b2,b2,b2,b2,b2,b2,b2))/=2**7))write(6,*) "NG"
if (any(f1(b3,b3,b3,b3,b3,b3,b3)/=2))write(6,*) "NG"
if (any(lbound(f1(b3,b3,b3,b3,b3,b3,b3))/=0))write(6,*) "NG"
if (any(ubound(f1(b3,b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(shape (f1(b3,b3,b3,b3,b3,b3,b3))/=2))write(6,*) "NG"
if (   (size  (f1(b3,b3,b3,b3,b3,b3,b3))/=2**7))write(6,*) "NG"
if (any(f2(b1,b1,b1,b1,b1,b1,b1)/=2))write(6,*) "NG"
if (any(lbound(f2(b1,b1,b1,b1,b1,b1,b1))/=1))write(6,*) "NG"
if (any(ubound(f2(b1,b1,b1,b1,b1,b1,b1))/=2))write(6,*) "NG"
if (any(shape (f2(b1,b1,b1,b1,b1,b1,b1))/=2))write(6,*) "NG"
if (   (size  (f2(b1,b1,b1,b1,b1,b1,b1))/=2**7))write(6,*) "NG"
if (any(f2(b2,b2,b2,b2,b2,b2,b2)/=2))write(6,*) "NG"
if (any(lbound(f2(b2,b2,b2,b2,b2,b2,b2))/=1))write(6,*) "NG"
if (any(ubound(f2(b2,b2,b2,b2,b2,b2,b2))/=2))write(6,*) "NG"
if (any(shape (f2(b2,b2,b2,b2,b2,b2,b2))/=2))write(6,*) "NG"
if (   (size  (f2(b2,b2,b2,b2,b2,b2,b2))/=2**7))write(6,*) "NG"
if (any(f2(b3,b3,b3,b3,b3,b3,b3)/=2))write(6,*) "NG"
if (any(lbound(f2(b3,b3,b3,b3,b3,b3,b3))/=1))write(6,*) "NG"
if (any(ubound(f2(b3,b3,b3,b3,b3,b3,b3))/=2))write(6,*) "NG"
if (any(shape (f2(b3,b3,b3,b3,b3,b3,b3))/=2))write(6,*) "NG"
if (   (size  (f2(b3,b3,b3,b3,b3,b3,b3))/=2**7))write(6,*) "NG"

end
call sub(1)
print *,'pass'
end
