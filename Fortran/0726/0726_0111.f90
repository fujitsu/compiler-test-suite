 call s1
 print *,'pass'
 end
 subroutine s1
  real::a(10,10)=2.0,b(10,10)=1.0
  real::aa(10,10)=2.0,bb(10,10)=1.0
  forall(i=1:10,j=1:10,b(i,j)/=1.0)
    a(i,j)= real(i+j-2)
    b(i,j)=a(i,j)+b(i,j)*real(i*j)
  end forall
  do     i=1,10;do j=1,10
    if (bb(i,j)==1.0)cycle
    aa(i,j)= real(i+j-2)
    bb(i,j)=aa(i,j)+bb(i,j)*real(i*j)
  end do;end do
  if (any(a/=2.0))write(6,*) "NG"
  if (any(b/=1.0))write(6,*) "NG"
  if (any(aa/=2.0))write(6,*) "NG"
  if (any(bb/=1.0))write(6,*) "NG"
      end
