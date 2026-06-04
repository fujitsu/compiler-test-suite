      integer,dimension(3)::i,j

!$omp parallel
!$omp workshare
      i=(/1,0,1/)
      j=(/0,1,0/)
!$omp end workshare
!$omp workshare
   10 where(i==1) i=1
!$omp end workshare
!$omp workshare
   20 where(i==1)
   30   where(i>=1) i=1
   40 endwhere
!$omp end workshare
!$omp workshare
   50 where(i==1)
   60   where(i>=1) i=1
   70 elsewhere
   80   where(i==0) i=0
   90 endwhere
!$omp end workshare
!$omp workshare
  100 where(i==1)
  110   where(i>=1) i=1
  120 endwhere
!$omp end workshare
!$omp workshare
  130 where(i==1) i=1
!$omp end workshare
!$omp end parallel

      if (any(i/=(/1,0,1/))) print *,"fail"
      if (any(j/=(/0,1,0/))) print *,"fail"
      print *,'pass'

      end
