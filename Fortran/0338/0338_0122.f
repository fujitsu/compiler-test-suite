      REAL A(10),B(10)
      DATA A/10*1.0/,B/10*2.0/
      CALL PUTL(A,B)
      CALL HEADER(A,B)
      STOP
      END
      SUBROUTINE HEADER(A,B)
      REAL A(10),B(10)
      DO 1 I=1,10
    1  A(I) = B(I) + 1.0
      WRITE(6,*) A
      ENTRY PUTL(A,B)
      DO 2 I=1,10
    2  A(I) = A(I) + 1.0
      WRITE(6,*) A
      RETURN
      END
