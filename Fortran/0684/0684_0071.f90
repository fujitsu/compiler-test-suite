CALL OMP_SET_NUM_THREADS(1)
 call s1
 print *,'pass'
 end
 subroutine s1
  integer,dimension(3,3)::x,y1=reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/))
  integer,dimension(3,3)::xx,yy1=reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/))
  integer,dimension(3,3)::xxx,yyy1=reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/))
  integer,dimension(3,3)::y,yy,yyy
!$omp parallel default(private) shared(y1,yy1,yyy1)
 y=y1;yy=yy1;yyy=yyy1
  x=0;xx=0;xxx=0
  m=3;n=2
  forall(j=1:m,k=1:n) x(k,j)=y(j,k)
  forall(k=1:n) xxx(k,1:m)=yyy(1:m,k)
!$omp parallel do default(private) shared(xx,yy,m,n)
  do     j=1,m;do k=1,n
    xx(k,j)=yy(j,k)
  end do;end do
!$omp end parallel do
  if (any(x/=xx))print *,"fail"
  if (any(xxx/=xx))print *,"fail"
!$omp end parallel
      end
