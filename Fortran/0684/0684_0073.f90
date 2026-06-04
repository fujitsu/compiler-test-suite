CALL OMP_SET_NUM_THREADS(1)
 call s1
 print *,'pass'
 end
 subroutine s1
  integer,dimension(2,2,3,3,2,2)::x,y1=reshape((/(mm,mm=1,36*4)/),(/2,2,3,3,2,2/))
  integer,dimension(2,2,3,3,2,2)::xx,yy1=reshape((/(mm,mm=1,36*4)/),(/2,2,3,3,2,2/))
  integer,dimension(2,2,3,3,2,2)::xxx,yyy1=reshape((/(mm,mm=1,36*4)/),(/2,2,3,3,2,2/))
  integer,dimension(2,2,3,3,2,2)::y,yy,yyy
!$omp parallel default(private) shared(y1,yy1,yyy1)
 y=y1;yy=yy1;yyy=yyy1
  x=0;xx=0;xxx=0
  m=3;n=2
  forall(j=1:m,k=1:n) x(1:2,1:n,k,j,1:2,1:n)=y(1:2,1:n,j,k,1:2,1:n)
  forall(k=1:n) xxx(1:2,1:n,k,1:m,1:2,1:n)=yyy(1:2,1:n,1:m,k,1:2,1:n)
!$omp do
  do     j=1,m;do k=1,n
    xx(1:2,1:n,k,j,1:2,1:n)=yy(1:2,1:n,j,k,1:2,1:n)
  end do;end do
!$omp end do 
  if (any(x/=xx))print *,"fail"
  if (any(xxx/=xx))print *,"fail"
!$omp end parallel
      end
