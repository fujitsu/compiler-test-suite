 call s1
 print *,'pass'
 end
 subroutine s1
  character,dimension(3,2,3,2)::a,aa
  character,dimension(5)::f=(/'1','2','3','4','5'/)
  data n/2/
  forall(i=1:n,j=1:n)
    a(:,i,:,j)=f(i+j-1)
  end forall
  do     i=1,n;do j=1,n
    aa(:,i,:,j)=f(i+j-1)
  end do;end do
  if (any(a/=aa))write(6,*) "NG"
      end
