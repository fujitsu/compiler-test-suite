 call s1
 print *,'pass'
 end
 subroutine s1
  integer::x=-1
  real a(5,4),aa(5,4)
  j=100
  forall(x=1:5,j=1:4)
    a(x,j)=j
  end forall
  do     x=1,5;do j=1,4
    aa(x,j)=j
  end do;end do
  if (any(a/=aa))write(6,*) "NG"
  if (any((/a/)/=(/1,1,1,1,1,2,2,2,2,2,3,3,3,3,3,4,4,4,4,4/)))write(6,*) "NG"
      end
