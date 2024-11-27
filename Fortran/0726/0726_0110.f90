 call s1
 print *,'pass'
 end
 subroutine s1
  real::a(10,10),b(10,10)=1.0
  real::aa(10,10),bb(10,10)=1.0
  forall(i=1:10,j=1:10,b(i,j)/=0.0)
    a(i,j)= real(i+j-2)
    b(i,j)=a(i,j)+b(i,j)*real(i*j)
  end forall
  do     i=1,10;do j=1,10
    if (bb(i,j)==0.0)cycle
    aa(i,j)= real(i+j-2)
    bb(i,j)=aa(i,j)+bb(i,j)*real(i*j)
  end do;end do
  if (any(a/=aa))write(6,*) "NG"
  if (any(b/=bb))write(6,*) "NG"
      end
