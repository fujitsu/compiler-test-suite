 call s1
 print *,'pass'
 end
 subroutine s1
  complex::a(3,2,3,2)
  complex::aa(3,2,3,2)
  data n/2/
  forall(i=1:n,j=1:n)
    a(:,i,:,j)=cmplx(1.0,1.0)/cmplx(i+j-1,i+j-1)
  end forall
  do     i=1,n;do j=1,n
    aa(:,i,:,j)=cmplx(1.0,1.0)/cmplx(i+j-1,i+j-1)
  end do;end do
  if (any(a/=aa))write(6,*) "NG"
      end
