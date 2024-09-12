      INTEGER*4,ALLOCATABLE,DIMENSION(:,:,:)::A1
      INTEGER*4 AA(6)
      DO 10 K=1,6
   10 AA(K)=K
      ALLOCATE(A1(AA(1):AA(2),AA(3):AA(4),AA(5):AA(6)))
      A1=0
      A1(2,4,6)=1
      A1(1,3,5)=2
      PRINT *,A1(2,4,6)
      PRINT *,A1(1,3,5)
      PRINT *,A1
      DEALLOCATE(A1)
      print *,'***** PASS *****'
      END
