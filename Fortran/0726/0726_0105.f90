 call s1
 print *,'pass'
 end
 subroutine s1
  real::a(3,2,3,2)=reshape((/(m,m=1,36)/),(/3,2,3,2/))
  real::aa(3,2,3,2)=reshape((/(m,m=1,36)/),(/3,2,3,2/))
  data n/2/
  forall(i=1:n,j=1:n)
    a(:,i,:,j)=1.0/real(i+j-1)
  end forall
  do     i=1,n;do j=1,n
    aa(:,i,:,j)=1.0/real(i+j-1)
  end do;end do
  if (any(a/=aa))write(6,*) "NG"
      end
