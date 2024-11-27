 call s1
 print *,'pass'
 end
 subroutine s1
  integer::m=3,n=2
  integer,dimension(3,3)::x,y=reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/))
  integer,dimension(3,3)::xx,yy=reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/))
  integer,dimension(3,3)::xxx,yyy=reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/))
  x=0;xx=0;xxx=0
  forall(j=1:m,k=1:n) x(k,j)=y(j,k)
  forall(k=1:n) xxx(k,1:m)=yyy(1:m,k)
  do     j=1,m;do k=1,n
    xx(k,j)=yy(j,k)
  end do;end do
  if (any(x/=xx))write(6,*) "NG"
  if (any(xxx/=xx))write(6,*) "NG"
      end
