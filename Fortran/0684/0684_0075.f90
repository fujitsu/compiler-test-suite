CALL OMP_SET_NUM_THREADS(1)
 call s1
 print *,'pass'
 end
 subroutine s1
  integer,dimension(9)::X,x1=(/1,2,3,4,5,6,7,8,9/)
  integer,dimension(9)::XX,xx1=(/1,2,3,4,5,6,7,8,9/)
!$omp parallel default(private) shared(x1,xx1)
x=x1;xx=xx1
  N=9
  FORALL (I = 2:N-1) X(I) = (X(I-1) + 2*X(I) + X(I+1) ) / 4
  XX(2:N-1) = (XX(1:N-2) + 2*XX(2:N-1) + XX(3:N+0) ) / 4
  if (any(x/=xx))print *,"fail"
!$omp end parallel
      end
