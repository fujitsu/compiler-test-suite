      REAL*4 A(100,100)
      DATA A/10000*1.0/
      DATA N/100/
      CALL SUB1(A,N)
      WRITE(6,1000) A
 1000 FORMAT(1H ,15F5.1)
      STOP
      END
C
      SUBROUTINE SUB1(B,M)
      REAL*4 B(M,M)
      DO 10 I=1,M
         DO 10 J=1,M
            B(I,J) = B(I,J) + 1
   10 CONTINUE
      RETURN
      END
