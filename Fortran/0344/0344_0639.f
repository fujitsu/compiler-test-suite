      DIMENSION N(10)
      DATA N/10*0/,M/1/
      CALL SUB(10,M,N)
      STOP
      END
C
      SUBROUTINE SUB(L,M,N)
      DIMENSION N(L)
      DO 10 I=1,10
         N(I)=N(I)+M
   10 CONTINUE
      WRITE(6,1000) N
 1000 FORMAT(I10)
      RETURN
      END
