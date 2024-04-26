      INTEGER A(100),B(100)
      DATA N/100/,A/100*1/
C
      CALL SUB1(A,B,N)
      WRITE(6,1) B
    1 FORMAT(1H ,10I4)
      STOP
      END
C
      SUBROUTINE SUB1(A,B,N)
      INTEGER A(100),B(100)
      DATA J/0/
C
      DO 10 I=1,N
         B(I) = ISHFT(A(I),I-J)
         J = J + 1
   10 CONTINUE
C
      RETURN
      END
