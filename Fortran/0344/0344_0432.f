      PROGRAM MAIN
      INTEGER A(1026)/1026*1/,NN/2/
      N = 0
      ICNT = 1022
C
      DO 10 I=1,1026
        M = I + N
        A(I) = IBSET(I,M*N)
        IF (I.GT.ICNT) THEN
          A(I) = A(I) + IBCLR(M,I-ICNT)
        ENDIF
   10 CONTINUE
C
      
      WRITE(6,*)
      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,*) (A(I),I=1,1026,10)
      WRITE(6,*)
C
      DO 20 I=1,1026
        M = A(1)*N
        A(I) = IBCLR(I,I*M)
        IF (I.LE.NN) THEN
          A(I) = A(I) - IBCLR(A(I),NN-M)
        ENDIF
        A(I) = A(I) + M
   20 CONTINUE
C
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,*) (A(I),I=1,1026,10)
      WRITE(6,*)
      STOP
      END
