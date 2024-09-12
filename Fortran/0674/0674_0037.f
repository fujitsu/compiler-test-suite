      PROGRAM MAIN
      REAL*4 A(10,10)/100*1.0/,B(10,10)/100*2.4/,C(10,10)/100*0.0/

      DO 10 J=2,10
        DO 20 I=1,10
          DO 30 K=1,10
            CALL SUB(A,K)
   30     CONTINUE
          C(I,J) = B(I,J)
          B(I,J) = A(I,J)
   20   CONTINUE
   10 CONTINUE
      PRINT *,A,B,C
      STOP
      END
      SUBROUTINE SUB(A,K)
      REAL*4 A(10,10)
      DO 10 L=1,K
        A(L,5) = K
 10   CONTINUE
      RETURN
      END
