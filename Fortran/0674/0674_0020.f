      PROGRAM MAIN
      INTEGER A(30),B(30)
      LOGICAL L(1000)
      DATA A/30*1/,B/30*10/,L/1000*.FALSE./
      DO 20 I = 1,30,2
        A(I) = I
        B(I) = -(I*I)
   20   L(I) = .TRUE.
      CALL SUB(L,A,B,30)
      STOP
      END

      SUBROUTINE SUB(L,A,B,N)
      INTEGER A(N),B(N)
      LOGICAL L(1000)
      ICOUNT = 1
      DO 1000 WHILE( ICOUNT.LE.2 )
        DO 10 I = 1,1000
          IF( L(I) ) A(I) = B(I)
   10     CONTINUE
   99   PRINT *,A,B
 1000   ICOUNT = ICOUNT + 1
      STOP
      END
