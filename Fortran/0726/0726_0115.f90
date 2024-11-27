 call s1
 print *,'pass'
 end
 subroutine s1
  real ::x(10)=-100,y(10)=(/2,0,3,0,4,0,5,0,6,0/)
  real ::xx(10)=-100,yy(10)=(/2,0,3,0,4,0,5,0,6,0/)
  n=10
    FORALL (I = 1:N, Y(I) .NE. 0.0)
      X(I) = 1.0/Y(I)
    END FORALL
  do     i=1,n
    if (yy(i)==0.0)cycle
    xx(i)=1.0/yy(i)
  end do
  if (any(x/=xx))write(6,*) "NG"
      end
