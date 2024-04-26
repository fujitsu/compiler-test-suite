      DATA M/1/
      CALL SUB1(M)
      STOP
      END
C
      SUBROUTINE SUB1(M)
      INTEGER A(100),B(100)
      DATA B/100*1/,N/100/
      DO 10 I=1,N
         A(I) = ISHFT(B(I),M)
   10 CONTINUE
      WRITE(6,100) (A(I)+B(I),I=1,N)
  100 FORMAT(10I4)
      RETURN
      END
