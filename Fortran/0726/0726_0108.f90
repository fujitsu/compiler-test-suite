 call s1
 print *,'pass'
 end
 subroutine s1
  complex*16::a(3,2,3,2),aa(3,2,3,2)
  data n/2/
  forall(i=1:n,j=1:n)
    a(:,i,:,j)=1.0/real(i+j-1)
  end forall
  do     i=1,n;do j=1,n
    aa(:,i,:,j)=1.0/real(i+j-1)
  end do;end do
  if (any(abs(a-aa)>0.00001))write(6,*) "NG"
      end
